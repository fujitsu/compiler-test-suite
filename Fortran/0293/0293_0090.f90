subroutine s1(n,k)
type x
  character(:),pointer::x1
end type
type(x)::yy(3)
yy(3)%x1(1:2)='1'
end
print *,'pass'
end
