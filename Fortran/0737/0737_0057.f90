program aaa
 interface
  subroutine sub(pp)
   integer(4),allocatable,dimension(:)::pp
   intent(in) pp
  end subroutine
 end interface
 type x
  integer(4),allocatable,dimension(:)::pp
 end type
type (x)::v
  allocate(v%pp(5))
  v%pp=1
  call sub(v%pp)
do k=1,5
  v%pp=1
  call sub(v%pp)
end do
print *,'pass'
end

subroutine sub(pp)
  integer(4),allocatable,dimension(:)::pp
  intent(in)  pp
  if (any(pp/=1))write(6,*) "NG"
end
