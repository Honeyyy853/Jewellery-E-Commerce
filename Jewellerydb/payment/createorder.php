<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
// require('vendor/autoload.php');

require_once "razorpay-php/Razorpay.php";

use Razorpay\Api\Api;

$amount=isset($_GET['amount']) ? (int)$_GET['amount'] : 0;

// Securely load Environment Variables
require_once __DIR__ . "/../load_env.php";
loadEnv(__DIR__ . "/../.env");

// Basic validation check
if (empty($_ENV['RAZORPAY_KEY_ID']) || empty($_ENV['RAZORPAY_KEY_SECRET'])) {
    http_response_code(500);
    echo json_encode(["error" => "Server misconfiguration: payment credentials are missing."]);
    exit;
}

$keyId = $_ENV['RAZORPAY_KEY_ID'];
$keySecret = $_ENV['RAZORPAY_KEY_SECRET'];

$api = new Api($keyId, $keySecret);

$orderData = [
    'receipt'         => 'rcptid_11',
    'amount'          => $amount*100, // 500 rs in paise
    'currency'        => 'INR'
];

$order = $api->order->create($orderData);

echo json_encode($order->toArray());
