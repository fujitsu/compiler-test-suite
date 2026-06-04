IMPLICIT NONE
integer::n,nn=3
n=2
associate( z=>n+2)
  block 
associate( k1=>n,  m2=>nn)
  block 
    integer::ua(k1,z)
    integer::ub(m2,z)
    integer::uc(size(ub),m2,z)
    integer::ud(size(ub),k1,z)
    integer::ue(size(ua),m2,z)
    integer::uf(size(ua),k1,z)
    integer::ug(m2,size(ub),m2,z)
    integer::uh(m2,size(ub),k1,z)
    integer::ui(m2,size(ua),m2,z)
    integer::uo(m2,size(ua),k1,z)
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

  block 
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
  end block
end associate
    if (size(ua)/=2*4) print *,1001
    if (size(ub)/=3*4) print *,1002
    if (size(uc)/=12*3*4) print *,1003
    if (size(ud)/=12*2*4) print *,1004
    if (size(ue)/=8*3*4) print *,1005
    if (size(uf)/=8*2*4) print *,1006
    if (size(ug)/=3*12*3*4) print *,1007
    if (size(uh)/=3*12*2*4) print *,1008
    if (size(ui)/=3*8*3*4) print *,1009
    if (size(uo)/=3*8*2*4) print *,1010
  end block
end associate
  end block
end associate
print *,'sngg947q : pass'
end
