type ty1
  integer,allocatable:: arr(:)
end type
type(ty1) :: a1,a2
allocate(a2%arr(2:2));a2%arr=(/100/)
a1=a2
if (any(ubound(a1%arr)/=2))write(6,*) "NG"
if (any(ubound(a2%arr)/=2))write(6,*) "NG"
if (any(a1%arr/=100))write(6,*) "NG"
if (any(a2%arr/=100))write(6,*) "NG"
print *,'pass'
end

