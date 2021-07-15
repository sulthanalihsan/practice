import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'interviewsc.dart';

void main() {
  test('description', () {
    var a = <Node>[
      Node(x: 1, y: 2),
      Node(x: 1, y: 3),
      Node(x: 4, y: 2),
    ];
    var b = <Node>[
      Node(x: 1, y: 2),
      Node(x: 4, y: 5),
      Node(x: 0, y: 6),
    ];
    expect(join(a, b), [
      Node(x: 1, y: 7),
      Node(x: 4, y: 7),
      Node(x: 0, y: 6),
    ]);
  });
}
