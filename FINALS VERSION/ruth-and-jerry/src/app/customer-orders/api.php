<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$servername = "your_server_name";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Retrieve all customer orders
    $result = $conn->query("SELECT * FROM customer_orders");

    $data = array();

    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    echo json_encode($data);
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Add a new customer order
    $data = json_decode(file_get_contents("php://input"), true);

    $customerName = $data['customer_name'];
    $orderDetails = $data['order_details'];

    $stmt = $conn->prepare("INSERT INTO customer_orders (customer_name, order_details) VALUES (?, ?)");
    $stmt->bind_param("ss", $customerName, $orderDetails);
    $stmt->execute();

    echo json_encode(array("message" => "Order added successfully"));

    $stmt->close();
} else {
    http_response_code(405); // Method Not Allowed
}

$conn->close();
?>