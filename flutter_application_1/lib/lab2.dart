//************** association(aggregation-composition) ******************

//composition

class Book {
  Page page1 = Page('This is content for page 1');
  Page page2 = Page('This is content for page 2');
}

class Page {
  Page(String content) {
    print(content);
  }

  Book book = Book();
}

// Aggregation

class Car {}

class Engine {
  Car car = Car();
}

//************** inheritance & override ******************

class Person {
  void dispName(String name) {
    print(name);
  }

  void dispAge(int age) {
    print(age);
  }
}

class Mounir extends Person {
  void dispBranch(String nationality) {
    print(nationality);
  }
}

class Mostafa extends Person {
  @override
  void dispName(String name) {
    print("Hello Mounir");
  }

  void result(String result) {
    print(result);
  }
}

//************** overload ******************

class Store {
  String? product;
  int? countity;

  Store(p, c) {
    product = p;
    countity = c;
  }

  void printData({String? finishProduct, int? price}) {
    if (finishProduct == null && price == null) {
      print(product);
      print(countity);
    } else if (finishProduct != null && price != null) {
      print(finishProduct);
      print(price);
    }
  }
}

//************** interfaces ******************

class ImobileBaseOperation {
  void makeCall() {
    print("make call !!");
  }

  void openFlash() {
    print("Open Flash !!");
  }
}

class Iiphone {
  void sendToIphone() {
    print("send to iphone !!");
  }
}

class IcameraOperation {
  void takePic() {
    print("Take Picture !!");
  }
}

class IwifiOperation {
  void connectWifi() {
    print("wifi connected !!");
  }
}

class Nokia implements ImobileBaseOperation {
  void makeCall() {
    print("make call !!");
  }

  void openFlash() {
    print("Open Flash !!");
  }
}

class Iphone implements ImobileBaseOperation, Iiphone, IcameraOperation {
  void makeCall() {
    print("make call !!");
  }

  void openFlash() {
    print("Open Flash !!");
  }

  void sendToIphone() {
    print("send to iphone !!");
  }

  void takePic() {
    print("Take Picture !!");
  }
}

class WindowsPhone
    implements ImobileBaseOperation, Iiphone, IcameraOperation, IwifiOperation {
  void makeCall() {
    print("make call !!");
  }

  void openFlash() {
    print("Open Flash !!");
  }

  void sendToIphone() {
    print("send to iphone !!");
  }

  void takePic() {
    print("Take Picture !!");
  }

  void connectWifi() {
    print("wifi connected !!");
  }
}

void main() {
  //************** inheritance & override ******************

  // Mostafa j =  Mostafa();
  // j.dispName("Mostafa");
  // j.dispAge(24);
  // j.result("Passed");

  // Mounir p =  Mounir();
  // p.dispName("Mounir");
  // p.dispAge(21);
  // p.dispBranch("ITI");

  //************** overload ******************

//   Store sonai = Store('fan',1000);

//   sonai.printData(finishProduct:'washer',price:200);

  //************** interfaces ******************

//   Nokia n = Nokia();
//   n.makeCall();
//   n.openFlash();

//   WindowsPhone w = WindowsPhone();
//   w.connectWifi();
//   w.sendToIphone();
//   w.takePic();
}
