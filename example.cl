
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
    f() : Int {d.f()};
};

class B inherits A {
    hh : String <- "AAA";
    b : Int <- 2;
    f() : Int {b};
};

class Main inherits IO {
  main():Int { 0 };
  plus(): Int {1 + 2};
  sub() : Int {3 - 1};
  mul() : Int {3 * 1};
  div() : Int {3 / 1};
};

