<?php

require_once 'database.php';

class Catalogo {
    private $conn;

    public function __construct($dbConnection) {
        $this->conn = $dbConnection;
    }

    public function guardarPedido($pedido, $valorTotal, $persona) {
        $sql = "INSERT INTO pedidos (productos, valor_total, id_cliente) VALUES (?, ?, ?)";
        $stmt = $this->conn->prepare($sql);

        if ($stmt === false) {
            die('Error en la preparaci n de la consulta: ' . $this->conn->error);
        }
    
        $stmt->bind_param('sds', $pedido, $valorTotal, $persona);

        if ($stmt->execute()) {
            // Si la consulta fue exitosa, obtenemos el último ID insertado
            $pedidoId = $this->conn->insert_id;
            return $pedidoId;  // Retorna el ID del pedido recién creado
        } else {
            return false;  // Si hubo un error, retornamos false
        }
    }


    public function guardarPPCantidad($pedidoId, $productoId, $productoCantidad) {
        $sql = "INSERT INTO ppcantidad (id_pedido, id_producto, cantidad) VALUES (?, ?, ?)";
        $stmt = $this->conn->prepare($sql);

        if ($stmt === false) {
            die('Error en la preparación de la consulta: ' . $this->conn->error);
        }

        $stmt->bind_param('iii', $pedidoId, $productoId, $productoCantidad);  // 'ii' porque ambos son enteros

        if ($stmt->execute()) {
            return true;
        } else {
            return false;
        }
    }
}

?>
