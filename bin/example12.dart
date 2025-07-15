void main() {
  const p1 = Person(1, "Ahmed");
  const p2 = Person(1, "Ahmed");

  print(p1 == p2);

  print('-' * 10);

  const nums1 = [1, 2, 3];
  const nums2 = [1, 2, 3];
  
  print(nums1 == nums2);

  nums1.add(4); // ❌ Unsupported operation
  print(nums1);
}

class Person {
  final int id;
  final String name;

  const Person(this.id, this.name);
}
