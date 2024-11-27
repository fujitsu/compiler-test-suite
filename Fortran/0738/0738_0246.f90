type z
  integer(2),allocatable,dimension(:,:,:,:,:)::za
end type
type (z) ::a,b
integer(4),allocatable,dimension(:,:,:,:,:)::i4

  allocate(b%za(2:2,3:3,4:4,5:5,6:7))
  a=b

  if (.not.allocated(a%za)) write(6,*) "NG"
  if (size(a%za)/=2) write(6,*) "NG"
  if (any(lbound(a%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
  if (any(ubound(a%za)/=(/2,3,4,5,7/))) write(6,*) "NG"

  allocate(i4(2:2,3:3,4:4,5:5,6:8))
  a=z(i4)

  if (.not.allocated(a%za)) write(6,*) "NG"
  if (size(a%za)/=3) write(6,*) "NG"
  if (any(lbound(a%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
  if (any(ubound(a%za)/=(/2,3,4,5,8/))) write(6,*) "NG"

  call sub(z(i4))

 print *,'pass'
 contains

  subroutine sub(cc)
   type(z) ::cc
   if (.not.allocated(cc%za)) write(6,*) "NG"
   if (size(cc%za)/=3) write(6,*) "NG"
   if (any(lbound(cc%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
   if (any(ubound(cc%za)/=(/2,3,4,5,8/))) write(6,*) "NG"
  end subroutine
end
