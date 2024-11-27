type z
  integer,allocatable::za(:)
end type
type(z)::a(2)
integer,allocatable::pp(:)

  allocate(pp(2))
  pp=(/1,2/)
  allocate(a(2)%za(5))
  a(2)%za=(/11,12,13,14,15/)

  where(pp.eq.0)
    a=z(pp)
  end where

  deallocate(pp)
  if (     allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(2)%za/=(/11,12,13,14,15/))) write(6,*) "NG"

 print *,'pass'
end
