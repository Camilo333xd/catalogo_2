<?php
require_once __DIR__ . '/../models/CatalogoModel.php';
error_reporting(E_ALL);
ini_set('display_errors', 1);

class CatalogoController {
    function QuitarCarrito() {
        session_start();
        
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['index'])) {
            $index = $_POST['index'];
            if (isset($_SESSION['cart'][$index])) {
                $product = $_SESSION['cart'][$index];
        
                if ($product['quantity'] > 1) {
                    $_SESSION['cart'][$index]['quantity']--;
                    $product['quantity'] = $_SESSION['cart'][$index]['quantity']; 
                    $action = 'reduced';
                } else {
                    // esta elimina el producto del carrito
                    array_splice($_SESSION['cart'], $index, 1);
                    $action = 'removed';
                }
        
                $_SESSION['cart_count']--;

                $_SESSION['producto_eliminado'] = true;
                header('Location: views/carrito.php'); // Redirige a la página del carrito
                exit();      
            }
        }
    }    

    function AñadirCarrito() {
        session_start();
    
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $product = [
                'name' => $_POST['name'],
                'description' => $_POST['description'],
                'price' => $_POST['price'],
                'image' => $_POST['image'],
                'id' => $_POST['id']
            ];
        
            $found = false;
            if (!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = [];
            }
            
            foreach ($_SESSION['cart'] as &$item) {
                if ($item['name'] == $product['name']) {
                    $item['quantity']++;
                    $found = true;
                    break;
                }
            }
        
            if (!$found) {
                $product['quantity'] = 1;
                $_SESSION['cart'][] = $product;
            }
        
            $_SESSION['cart_count'] = isset($_SESSION['cart_count']) ? $_SESSION['cart_count'] + 1 : 1;

            $_SESSION['producto_agregado'] = true;
            header('Location: views/catalogo.php'); // Redirige a la página del carrito
            exit();
        }
    }
    
    function ReservarProducto() {

        session_start(); 
    
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
        
            if (!empty($cart)) {
                $pedido = '';
                $valorTotal = 0;
                $persona = '';
                
                // Se arma el pedido y se calcula el total
                foreach ($cart as $product) {
                    $pedido .= $product['name'] . ' - ' . $product['price'] . ' (Cantidad: ' . $product['quantity'] . '), ';
                    $valorTotal += $product['price'] * $product['quantity'];
                    $persona = ($_SESSION['user_id']);
                }
        
                $pedido = rtrim($pedido, ', ');
    
                // Guardar el pedido en la tabla 'pedidos'
                $db = new Database();
                $catalogo = new Catalogo($db->conn);
    
                // Guardar pedido y obtener el ID insertado
                $pedidoId = $catalogo->guardarPedido($pedido, $valorTotal, $persona);
    
                if ($pedidoId) {
                    // Guardar cada producto en la tabla 'PPCantidad'
                    foreach ($cart as $product) {
                        // $productoId = $product['id'];  // Asegúrate de que el ID del producto esté en el array $product
                        $catalogo->guardarPPCantidad($pedidoId,  $product['id'], $product['quantity']);
                    }
    
                    // Limpiar carrito y redirigir
                    $_SESSION['cart'] = [];
                    $_SESSION['cart_count'] = 0;
                    $_SESSION['suit'] = true;
                    header('Location: ?controller=FormularioController&action=create');
                    exit();
                } else {
                    echo "Error al guardar el pedido.";
                }
            }
        }
    }
    
    

    function catalogo() {
        header('location: views/catalogo.php');
    }
}

?>