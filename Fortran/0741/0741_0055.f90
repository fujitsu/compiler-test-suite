type z
  integer,allocatable::za(:)
end type
type(z)::a(2)
integer,allocatable::pp(:)

  allocate(pp(2))
  pp=(/1,2/)

  where(pp.eq.1)
   a=z(pp)
  end where

  deallocate(pp)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (     allocated(a(2)%za)) write(6,*) "NG"
  if (size(a(1)%za)/=2) write(6,*) "NG"
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"

 print *,'pass'
end
