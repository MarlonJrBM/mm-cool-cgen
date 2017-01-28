
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)


class C {};
class A {
    a : Int;
    d: C;
    c: Bool <- true;
    f() : Int {0};
};

class B inherits A {
    hh : String <- "AAA";
    b : Int <- 2;
    f() : Int {1};
};

class Main inherits IO {
  main():Int { 0 };
};

