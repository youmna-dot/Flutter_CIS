void main() {
  SalesSystem salesSystem = SalesSystem();
  salesSystem.addProduct(Product(name: "Laptop", id: 1, price: 1500.0, quantity: 10));
  salesSystem.addProduct(Product(name: "Phone", id: 2, price: 1000.0, quantity: 20));
  salesSystem.addProduct(Product(name: "Tablet", id: 3, price: 800.0, quantity: 30));

  salesSystem.addCustomer(Customer(
      name: "Ahmed Ali",
      email: "ahmed@gmail.com",
      phone: "01025485586",
      address: "cairo",
      customerId: "cus1"));
  salesSystem.addCustomer(Customer(
      name: "Sara Mohamed",
      email: "mohamed@gmail.com",
      phone: "01025485587",
      address: "cairo",
      customerId: "cus2"));

  List<Map<String, dynamic>> orderDescription = [
    {'productId': 1, 'quantity': 2},
    {'productId': 2, 'quantity': 3},
  ];
  salesSystem.createOrder("cus1", orderDescription);

  salesSystem.showAllOrders();
}

class Product {
  String name;
  int id;
  double price;
  int quantity;

  Product({
    required this.name,
    required this.id,
    required this.price,
    required this.quantity,
  });

  void displayProduct() {
    print("Product: $name | Price: $price | Quantity: $quantity");
  }
}

class Customer {
  String name;
  String email;
  String phone;
  String address;
  String customerId;

  Customer({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.customerId,
  });

  void displayCustomer() {
    print("Customer: $name | Email: $email | Phone: $phone | Address: $address");
  }
}

class Order {
  String orderId;
  DateTime orderDate;
  List<OrderItem> orderItems;
  Customer customer;
  double totalCost;

  Order({
    required this.orderId,
    required this.orderDate,
    required this.orderItems,
    required this.customer,
    required this.totalCost,
  });

  void displayOrder() {
    print("Order ID: $orderId");
    customer.displayCustomer();
    print("Order Date: $orderDate");
    print("Order Items:");
    orderItems.forEach((element) => element.displayInfo());
    print("Total Cost: \$$totalCost");
  }
}

class OrderItem {
  Product product;
  int quantity;
  double get totalCost => product.price * quantity;

  OrderItem({
    required this.product,
    required this.quantity,
  });

  void displayInfo() {
    print("${product.name} x $quantity = \$$totalCost");
  }
}

class SalesSystem {
  Map<int, Product> products = {}; // changed key type to int
  Map<String, Customer> customers = {};
  List<Order> orders = [];

  void addProduct(Product product) {
    products[product.id] = product;
    print("Product ${product.name} added to the system");
  }

  void addCustomer(Customer customer) {
    customers[customer.customerId] = customer;
    print("Customer ${customer.name} added to the system ");
  }

  void createOrder(String customerId, List<Map<String, dynamic>> orderDescription) {
    var customer = customers[customerId];
    if (customer == null) {
      print("Customer not found");
      return;
    }

    List<OrderItem> orderItems = [];
    double totalCost = 0.0;
    for (var item in orderDescription) {
      var product = products[item['productId']];
      if (product != null) {
        var orderItem = OrderItem(
          product: product,
          quantity: item['quantity'],
        );
        orderItems.add(orderItem);
        totalCost += orderItem.totalCost;
      } else {
        print("Product not found");
      }
    }

    var order = Order(
      orderId: '${orders.length + 1}',
      customer: customer,
      orderItems: orderItems,
      orderDate: DateTime.now(),
      totalCost: totalCost,
    );

    orders.add(order);
    print("Order ${order.orderId} created for ${customer.name}");
    order.displayOrder();
  }

  void showAllOrders() {
    if (orders.isEmpty) {
      print("No orders found");
    } else {
      for (var order in orders) {
        order.displayOrder();
      }
    }
  }
}
