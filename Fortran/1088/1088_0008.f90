type x1
  integer::x
end type
type x2
  type(x1)::y
end type
type(x2)::v
v%y%x=3
associate( k=> v%y )
  block 
    integer::ary(k%x)
    if (size(ary)/=3) print *,1001
  end block
end associate
print *,'sngg088p : pass'
end
