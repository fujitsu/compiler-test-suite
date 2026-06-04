IMPLICIT NONE
integer::n,nn=3
n=2
associate( z=>n+2)
  block 
associate( k1=>n,  m2=>nn)
  block 
associate( y=>n+6)
  block 
    integer::a(k1,z)
    integer::b(m2,z)
    integer::c(size(b),m2,z)
    integer::d(size(b),k1,z)
    integer::e(size(a),m2,z)
    integer::f(size(a),k1,z)
    integer::g(m2,size(b),m2,z)
    integer::h(m2,size(b),k1,z)
    integer::i(m2,size(a),m2,z)
    integer::o(m2,size(a),k1,z)

    if (size(a)/=2*4) print *,1001
    if (size(b)/=3*4) print *,1002
    if (size(c)/=12*3*4) print *,1003,size(c)
    if (size(d)/=12*2*4) print *,1004
    if (size(e)/=8*3*4) print *,1005
    if (size(f)/=8*2*4) print *,1006
    if (size(g)/=3*12*3*4) print *,1007
    if (size(h)/=3*12*2*4) print *,1008
    if (size(i)/=3*8*3*4) print *,1009
    if (size(o)/=3*8*2*4) print *,1010
  end block
end associate
  end block
end associate
  end block
end associate
print *,'sngg945q : pass'
end
