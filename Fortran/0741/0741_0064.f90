type x
 integer,allocatable::za(:)
end type
type(x),allocatable::a(:)
integer,allocatable::pp(:)

  allocate(pp(10),a(10))
  pp(1:9:2)=(/(0,i=1,5)/)
  pp(2:10:2)=(/(i,i=1,5)/)

  where(pp.ge.1)
    a=x(pp)
  end where

  deallocate(pp)
  if (     allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (     allocated(a(3)%za)) write(6,*) "NG"
  if (.not.allocated(a(4)%za)) write(6,*) "NG"
  if (     allocated(a(5)%za)) write(6,*) "NG"
  if (.not.allocated(a(6)%za)) write(6,*) "NG"
  if (     allocated(a(7)%za)) write(6,*) "NG"
  if (.not.allocated(a(8)%za)) write(6,*) "NG"
  if (     allocated(a(9)%za)) write(6,*) "NG"
  if (.not.allocated(a(10)%za)) write(6,*) "NG"
  if (any(a(2)%za/=(/0,1,0,2,0,3,0,4,0,5/))) write(6,*) "NG"
  if (any(a(4)%za/=(/0,1,0,2,0,3,0,4,0,5/))) write(6,*) "NG"
  if (any(a(6)%za/=(/0,1,0,2,0,3,0,4,0,5/))) write(6,*) "NG"
  if (any(a(8)%za/=(/0,1,0,2,0,3,0,4,0,5/))) write(6,*) "NG"
  if (any(a(10)%za/=(/0,1,0,2,0,3,0,4,0,5/))) write(6,*) "NG"
  deallocate(a(2)%za)
  deallocate(a(4)%za)
  deallocate(a(6)%za)
  deallocate(a(8)%za)
  deallocate(a(10)%za)
  deallocate(a)

 print *,'pass'
end
