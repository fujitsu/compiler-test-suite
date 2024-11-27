type z
  integer,allocatable::za(:)
end type
type(z),allocatable::a(:)
integer,allocatable::pp(:)

  allocate(a(10))
  allocate(pp(10))
  pp=(/1,2,3,4,5,6,7,8,9,0/)

  where(pp.eq.0)
    a=z((/pp(1)/))
  elsewhere(pp.eq.1)
    a=z((/pp(2)/))
  elsewhere(pp.eq.2)
    a=z((/pp(3)/))
  elsewhere(pp.eq.3)
    a=z((/pp(4)/))
  elsewhere(pp.eq.4)
    a=z((/pp(5)/))
  elsewhere(pp.eq.5)
    a=z((/pp(6)/))
  elsewhere(pp.eq.6)
    a=z((/pp(7)/))
  elsewhere(pp.eq.7)
    a=z((/pp(8)/))
  elsewhere(pp.eq.8)
    a=z((/pp(9)/))
  elsewhere(pp.eq.9)
    a=z((/pp(10)/))
  end where

  deallocate(pp)

  do i=1,10
    if (.not.allocated(a(i)%za)) write(6,*) "NG"
    if (size(a(i)%za)/=1) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/2/))) write(6,*) "NG"
  deallocate(a(1)%za)
  if (any(a(2)%za/=(/3/))) write(6,*) "NG"
  deallocate(a(2)%za)
  if (any(a(3)%za/=(/4/))) write(6,*) "NG"
  deallocate(a(3)%za)
  if (any(a(4)%za/=(/5/))) write(6,*) "NG"
  deallocate(a(4)%za)
  if (any(a(5)%za/=(/6/))) write(6,*) "NG"
  deallocate(a(5)%za)
  if (any(a(6)%za/=(/7/))) write(6,*) "NG"
  deallocate(a(6)%za)
  if (any(a(7)%za/=(/8/))) write(6,*) "NG"
  deallocate(a(7)%za)
  if (any(a(8)%za/=(/9/))) write(6,*) "NG"
  deallocate(a(8)%za)
  if (any(a(9)%za/=(/0/))) write(6,*) "NG"
  deallocate(a(9)%za)
  if (any(a(10)%za/=(/1/))) write(6,*) "NG"
  deallocate(a(10)%za)

 print *,'pass'
end
