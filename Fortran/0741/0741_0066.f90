type x
 integer,allocatable::za(:)
end type
type(x),allocatable::a(:)
integer,allocatable::pp(:)

  allocate(pp(10),a(10))
  do i=1,10
    allocate(a(i)%za(i))
    a(i)%za=i
  enddo
  pp(1:9:2)=(/(i,i=1,5)/)
  pp(2:10:2)=(/(0,i=1,5)/)

  where(pp.ge.1)
    a=x(pp)
  end where

  deallocate(pp)
  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (.not.allocated(a(4)%za)) write(6,*) "NG"
  if (.not.allocated(a(5)%za)) write(6,*) "NG"
  if (.not.allocated(a(6)%za)) write(6,*) "NG"
  if (.not.allocated(a(7)%za)) write(6,*) "NG"
  if (.not.allocated(a(8)%za)) write(6,*) "NG"
  if (.not.allocated(a(9)%za)) write(6,*) "NG"
  if (.not.allocated(a(10)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1,0,2,0,3,0,4,0,5,0/))) write(6,*) "NG"
  if (any(a(2)%za/=(/2,2/))) write(6,*) "NG"
  if (any(a(3)%za/=(/1,0,2,0,3,0,4,0,5,0/))) write(6,*) "NG"
  if (any(a(4)%za/=(/4,4,4,4/))) write(6,*) "NG"
  if (any(a(5)%za/=(/1,0,2,0,3,0,4,0,5,0/))) write(6,*) "NG"
  if (any(a(6)%za/=(/6,6,6,6,6,6/))) write(6,*) "NG"
  if (any(a(7)%za/=(/1,0,2,0,3,0,4,0,5,0/))) write(6,*) "NG"
  if (any(a(8)%za/=(/8,8,8,8,8,8,8,8/))) write(6,*) "NG"
  if (any(a(9)%za/=(/1,0,2,0,3,0,4,0,5,0/))) write(6,*) "NG"
  if (any(a(10)%za/=(/10,10,10,10,10,10,10,10,10,10/))) write(6,*) "NG"
  do i=1,10,1
    deallocate(a(i)%za)
  enddo
  deallocate(a)

 print *,'pass'
end
