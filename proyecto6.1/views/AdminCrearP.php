<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Producto - Administración</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/camilo/CSS/crearp.css">
    <link rel="icon" href="../assets/camilo/FAVICON/peluqueria.png" type="image/x-icon">
    <style>
        
        body {
            background-image: url('../assets/camilo/Pictures/fonfoproductos.jpg');
        }
    </style>
</head>
<body class="bg-light">
    <div class="container ">
        <div class="card shadow-sm mt-5 translucent-form">
            <div class="card-header bg-primary text-white text-center">
                <h1 class="my-2">Agregar Nuevo Producto</h1>
            </div>
            <div class="card-body">
                <form action="../index.php?controller=producto&action=guardarProducto" method="POST" enctype="multipart/form-data" >
                    <div class="mb-3">
                        <label for="name" class="form-label">Nombre del Producto</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Descripción</label>
                        <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="price" class="form-label">Precio</label>
                            <input type="number" class="form-control" id="price" name="price" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="quantity" class="form-label">Cantidad</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">URL de la Imagen</label>
                        <input type="file" class="form-control" id="image" name="image" accept="image/*" required>
                    </div>
                    <div class="text-center">
                        <a href="AdminProducto.php" class="btn btn-warning btn-lg">Volver</a>
                        <button type="submit" class="btn btn-success btn-lg">Agregar Producto</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-swb8pCNDWN+OHe4zUegZnlWqnu31RcROcFlJYl6JrBZjhcRFM9CM54gubF2/t20w"
            crossorigin="anonymous"></script>
</body>
</html>
