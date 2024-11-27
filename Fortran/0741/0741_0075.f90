type z
  integer,allocatable::za(:)
end type
type(z),allocatable::a(:)

  allocate(a(3))
  allocate(a(1)%za(5:7))
  allocate(a(2)%za(5:7))
  allocate(a(3)%za(5:7))
  a(1)%za=(/0,1,0/)
  a(2)%za=(/0,2,0/)
  a(3)%za=(/0,3,0/)

  where(a(1)%za(:).eq.1)
   a(:)=a(:)
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
  if (any(a(1)%za/=(/0,1,0/))) write(6,*) "NG"
  if (any(a(2)%za/=(/0,2,0/))) write(6,*) "NG"
  if (any(a(3)%za/=(/0,3,0/))) write(6,*) "NG"

 print *,'pass'
end
