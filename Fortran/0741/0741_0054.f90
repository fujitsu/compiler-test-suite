type z
  integer,allocatable::za(:)
end type
type(z)::a(2),b(2)

  allocate(a(1)%za(2:3),a(2)%za(2:3))
  a(1)%za=(/1,2/)
  a(2)%za=(/3,4/)

  where((/.true.,.true./))
    b=a
  end where

  deallocate(a(1)%za,a(2)%za)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (size(b(1)%za)/=2) write(6,*) "NG"
  if (size(b(2)%za)/=2) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(lbound(b(1)%za)/=(/2/))) write(6,*) "NG"
  if (any(lbound(b(2)%za)/=(/2/))) write(6,*) "NG"
  if (any(ubound(b(1)%za)/=(/3/))) write(6,*) "NG"
  if (any(ubound(b(2)%za)/=(/3/))) write(6,*) "NG"
 print *,'pass'
end
