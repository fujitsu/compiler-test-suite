IMPLICIT NONE
integer::n,nn=3
n=2
associate( k1=>n,  m2=>nn)
  block 
    integer::a(k1)
    integer::b(m2)
    integer::c(size(b),m2)
    integer::d(size(b),k1)
    integer::e(size(a),m2)
    integer::f(size(a),k1)
    integer::g(m2,size(b),m2)
    integer::h(m2,size(b),k1)
    integer::i(m2,size(a),m2)
    integer::o(m2,size(a),k1)

    if (size(a)/=2) print *,1001
    if (size(b)/=3) print *,1002
    if (size(c)/=9) print *,1003,size(c)
    if (size(d)/=6) print *,1004
    if (size(e)/=6) print *,1005
    if (size(f)/=4) print *,1006
    if (size(g)/=27) print *,1007
    if (size(h)/=18) print *,1008
    if (size(i)/=18) print *,1009
    if (size(o)/=12) print *,1010
  end block
end associate
print *,'sngg942q : pass'
end
