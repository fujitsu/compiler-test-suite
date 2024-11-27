type x
 integer,allocatable::za(:)
end type
type(x),allocatable::a(:)
integer,allocatable::pp(:)

  allocate(pp(-1:8),a(10))
  pp(-1: 4)=(/(0,i=1,6)/)
  pp(5:8)=(/(i,i=7,10)/)

  where(pp.gt.1)
    a=x(pp)
  end where

  deallocate(pp)
  if (     allocated(a(1)%za)) write(6,*) "NG"
  if (     allocated(a(2)%za)) write(6,*) "NG"
  if (     allocated(a(3)%za)) write(6,*) "NG"
  if (     allocated(a(4)%za)) write(6,*) "NG"
  if (     allocated(a(5)%za)) write(6,*) "NG"
  if (     allocated(a(6)%za)) write(6,*) "NG"
  if (.not.allocated(a(7)%za)) write(6,*) "NG"
  if (.not.allocated(a(8)%za)) write(6,*) "NG"
  if (.not.allocated(a(9)%za)) write(6,*) "NG"
  if (.not.allocated(a(10)%za)) write(6,*) "NG"
  if (any(a(7)%za/=(/0,0,0,0,0,0,7,8,9,10/))) write(6,*) "NG"
  if (any(a(8)%za/=(/0,0,0,0,0,0,7,8,9,10/))) write(6,*) "NG"
  if (any(a(9)%za/=(/0,0,0,0,0,0,7,8,9,10/))) write(6,*) "NG"
  if (any(a(10)%za/=(/0,0,0,0,0,0,7,8,9,10/))) write(6,*) "NG"
  deallocate(a(7)%za)
  deallocate(a(8)%za)
  deallocate(a(9)%za)
  deallocate(a(10)%za)
  deallocate(a)

 print *,'pass'
end
