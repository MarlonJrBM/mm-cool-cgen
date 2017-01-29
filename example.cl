
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)


class C {
    b : Int <- 666;
    f() : Int {b};
};

class A {
    a : Int;
    d: C;
    c: Bool <- true;
    g() : Bool {false};
    f(c: Int) : Int {d.f()};
};

class B inherits A {
    hh : String <- "AAA";
    b : Int <- 2;
    h() : String {"BBB"};
    f(b: Int) : Int {b};
    y(a: Int, b: Int) : Int {a+b};
};

class Main inherits IO {
  main():Int { 0 };
  plus(): Int {1 + 2};
  sub() : Int {3 - 1};
  mul() : Int {3 * 1};
  div() : Int {3 / 1};
  lt() : Bool {1 < 2};
  comp() : Bool {NOT true};
  caller() : Int {parameters(1,"2")};
  parameters(x: Int, y: String) : Int {x};
};


