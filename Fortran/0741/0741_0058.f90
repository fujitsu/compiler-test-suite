type z
  integer,allocatable::za(:)
end type
type(z)::a(1),b(1)

  allocate(a(1)%za(5:5),b(1)%za(7:7))
  a(1)%za=1

  where(a(1)%za.eq.1)
   b=a
  end where

  deallocate(a(1)%za)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1/))) write(6,*) "NG"
  if (any(lbound(b(1)%za)/=(/5/))) write(6,*) "NG"
  if (any(ubound(b(1)%za)/=(/5/))) write(6,*) "NG"

 print *,'pass'
end
