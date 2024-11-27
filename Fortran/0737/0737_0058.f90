program aaa
 interface
  subroutine sub(pp)
   integer(4),allocatable,dimension(:)::pp
   intent(in) pp
  end subroutine
  subroutine sub2(v)
   type x
    sequence
    integer(4),allocatable,dimension(:)::pp
   end type
   type (x)::v
  end subroutine
 end interface
 type x
    sequence
  integer(4),allocatable,dimension(:)::pp
 end type
  integer(4),allocatable,dimension(:)::p
type (x)::v
  allocate(p(5));p=1
  v=x(p)
  call sub(v%pp)
do k=1,5
  v=x(p)
  call sub(v%pp)
end do
  v=x(p)
  call sub2(v)
do k=1,5
  v=x(p)
  call sub2(v)
end do
  call sub2(x(p))
do k=1,5
  call sub2(x(p))
end do
  deallocate(p)
  allocate(p(3));p=1
  call sub2(x(p))
do k=1,5
  call sub2(x(p))
end do
print *,'pass'
end

subroutine sub(pp)
  integer(4),allocatable,dimension(:)::pp
  intent(in)  pp
  if (any(pp/=1))write(6,*) "NG"
end
subroutine sub2(v)
 type x
    sequence
  integer(4),allocatable,dimension(:)::pp
 end type
type (x)::v
  if (any(v%pp/=1))write(6,*) "NG"
end
