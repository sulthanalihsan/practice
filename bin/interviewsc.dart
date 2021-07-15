import 'package:equatable/equatable.dart';

// Question

// array<Node> arr1 = { {1, 2}, {1, 3}, {4, 2} };
// array<Node> arr2 = { {1, 2}, {4,5}, {0,6} }
// join(arr1, arr2)

// Expected Result
// { {1, 7}, {4, 7}, {0, 6} }

List<Node> join(List<Node> a, List<Node> b) {
  Map temp = <int, int>{};
  var mergeList = a + b;

  mergeList.forEach((e) {
    if (!temp.containsKey(e.x)) {
      temp[e.x] = e.y;
    } else {
      temp[e.x] = (temp[e.x]! + e.y);
    }
  });

  return temp.entries.map((e) => Node(x: e.key, y: e.value)).toList();
}

class Node extends Equatable {
  final int x;
  final int y;

  Node({required this.x, required this.y});

  Map toJson() => {'x': x, 'y': y};

  factory Node.fromJson(Map<int, int> json) =>
      Node(x: json.keys.first, y: json.values.first);

  @override
  List<Object?> get props => [x, y];
}
