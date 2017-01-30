
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
    f(c: Int, e: Int) : Int {d.f()};
};

class B inherits A {
    hh : String <- "AAA";
    b : Int <- 2;
    h() : String {"BBB"};
    f(b: Int, c: Int) : Int {b <- 3};
    y(a: Int, b: Int) : Int {a+b};
};

class Main inherits IO {
  a: String;
  b: Int;
  c: B <- new B;
  main(): IO { { 
    out_string("Hello World\n"); 
    out_int(3-1); 
    out_string("\n"); 
} };
  plus(): Int {1 + 2};
  sub() : Int {3 - 1};
  mul() : Int {3 * 1};
  div() : Int {3 / 1};
  lt() : Bool {1 < 2};
  comp() : Bool {NOT true};
  caller() : Int {parameters(1,"2")};
  neg() : Int {~2};
  parameters(x: Int, y: String) : Int {x};
  cond() : Int {
    if (true) then 1 else 2 fi
  };
  loopF() : Object { while true loop 1 pool };
  isVoidF() : Bool {isvoid 1};
  assign() : Int {b <- 3};
  newF() : Int {new Int};
  static_disp() : Int {c@A.f(2,3)};
  disp() : Int {c.f(2,3)};
  lets() : Bool { let a : Bool in let b: Bool in a};
  caseF() : Object { 
    case c of 
    e : C => 1 ;
    f: B => 2;
    esac
  };
};


