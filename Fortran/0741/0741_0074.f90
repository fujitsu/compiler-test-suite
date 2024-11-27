type z
  integer,allocatable::za(:)
end type
type(z)::a(3),b(3)
integer::c(1)

  allocate(a(1)%za(5:7))
  allocate(a(2)%za(5:7))
  allocate(a(3)%za(5:7))
  a(1)%za=(/1,0,1/)
  a(2)%za=(/2,0,2/)
  a(3)%za=(/3,0,3/)

  where(a(1)%za(:).eq.1)
   a=a
  end where

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/5/))) write(6,*) "NG"
  if (any(lbound(a(2)%za)/=(/5/))) write(6,*) "NG"
  if (any(lbound(a(3)%za)/=(/5/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/7/))) write(6,*) "NG"
  if (any(ubound(a(2)%za)/=(/7/))) write(6,*) "NG"
  if (any(ubound(a(3)%za)/=(/7/))) write(6,*) "NG"
  if (any(a(1)%za/=(/1,0,1/))) write(6,*) "NG"
  if (any(a(2)%za/=(/2,0,2/))) write(6,*) "NG"
  if (any(a(3)%za/=(/3,0,3/))) write(6,*) "NG"

 print *,'pass'
end
