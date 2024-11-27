type z
  integer,allocatable::za(:)
end type
type(z)::a(10)
integer,allocatable::pp(:)

  allocate(pp(10))
  pp(1:5)=1
  pp(6:10)=0
  where(pp.eq.1)
    a=z(pp)
  end where

  deallocate(pp)

  do i=1,5
    if (.not.allocated(a(i)%za)) write(6,*) "NG"
    if (size(a(i)%za)/=10) write(6,*) "NG"
    if (any(a(i)%za/=(/1,1,1,1,1,0,0,0,0,0/))) write(6,*) "NG"
  enddo
  do i=6,10
    if (     allocated(a(i)%za)) write(6,*) "NG"
  enddo
 print *,'pass'
end
