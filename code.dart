// dart jamming code version 4.0 after very long time
// lets revise some basic stuff

class Human {
//   DateTime launchDataTime;
  String gender;
  double weight;
  double height;
  int age;

  void setGender(String gender) {
    this.gender = gender;
  }

  String getGender() {
    return this.gender;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  double getWeight() {
    return this.weight;
  }

  void setHeight(double height) {
    this.height = height;
  }

  double getHeight() {
    return this.height;
  }

  void setAge(int age) {
    this.age = age;
  }

  int getAge() {
    return this.age;
  }

  // desctructor

}

class Parent extends Human {
  String personName;
  bool hasChild;

  // child explicit object generation
  var childObject = Child();

  void setPersonName(String name) {
    this.personName = name;
  }

  String getPersonName() {
    return this.personName;
  }

  dynamic setBodyProperties(
      {String gender, double weight, double height, int age}) {
    this.setGender(gender);
    this.setWeight(weight);
    this.setHeight(height);
    this.setAge(age);
  }

  dynamic getBodyProperties() {
    // pritning every detail of the object Parent -> Human
    print("Name> " + this.getPersonName());
    print("Gender> " + this.getGender());

    // making int/double value handlers for using them as string
    double weightValueHandler = this.getWeight();
    double heightValueHandler = this.getHeight();
    int ageValueHandler = this.getAge();

    print("Weight> " + '$weightValueHandler');
    print("Height> " + '$heightValueHandler');
    print("Age> " + '$ageValueHandler');

    if (hasChild == true) {
      print("Has a Child!");
      childObject.setChildAvailability(true);
      childObject.setChildName("Mark Doe");
      childObject.setChildProperties(
          gender: "Transgender", weight: 23.56, height: 4.2, age: 8);
      childObject.getChildProperties();
    } else {
      print("Does not have a child!");
    }
  }

  void setChildAvailability(bool available) {
    this.hasChild = available;
  }
}

class Child extends Parent {
  String childName;
  bool hasParent;

  void setChildName(String name) {
    this.childName = name;
  }

  String getChildName() {
    return this.childName;
  }

  dynamic setChildProperties(
      {String gender, double weight, double height, int age}) {
    this.gender = gender;
    this.weight = weight;
    this.height = height;
    this.age = age;
  }

  dynamic getChildProperties() {
    // printing the child's properties
    print("Child Name> " + this.getChildName());
    print("Child Gender> " + this.getGender());

    // making integer/double decimal values handlers
    double weightValueHandler = this.getWeight();
    double heightValueHandler = this.getHeight();
    int ageValueHandler = this.getAge();

    print("Child Weight> " + '$weightValueHandler');
    print("Child Height> " + '$heightValueHandler');
    print("Child Age> " + '$ageValueHandler');
  }
}

void tester() {
  var parentObject = Parent();

  parentObject.setPersonName("John Doe");
  parentObject.setBodyProperties(
      gender: "Male", weight: 68.78, height: 6.1, age: 31);
  parentObject.getBodyProperties();
}

void main() => tester();
