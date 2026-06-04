type x1
  integer::x
end type
type(x1)::v
v%x=3
associate( k=> v%x )
  block 
    integer::ary(k)
    if (size(ary)/=3) print *,1001
  end block
end associate
print *,'sngg087p : pass'
end
