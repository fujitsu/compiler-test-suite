type z
  integer(2),allocatable,dimension(:,:,:,:,:)::za
end type
type (z),allocatable,dimension(:) ::a,b
real(8),allocatable,dimension(:,:,:,:,:)::r8

  allocate(a(1),b(1))
  allocate(b(1)%za(2:2,3:3,4:4,5:5,6:7))
  b(1)%za=1
  a=b
  deallocate(b(1)%za)
  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (size(a(1)%za)/=2) write(6,*) "NG"
  if (any(a(1)%za/=1)) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/2,3,4,5,7/))) write(6,*) "NG"

  allocate(r8(2:2,3:3,4:4,5:5,6:8))
  allocate(b(1)%za(1:2,3:4,5:6,7:8,9:10))
  r8=2.0D0
  b(1)%za=3

  call sub(z(r8),z(b(1)%za))

  a=z(r8)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (size(a(1)%za)/=3) write(6,*) "NG"
  if (any(a(1)%za/=2)) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/2,3,4,5,8/))) write(6,*) "NG"

  a=z(b(1)%za)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (size(a(1)%za)/=32) write(6,*) "NG"
  if (any(a(1)%za/=3)) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/1,3,5,7,9/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/2,4,6,8,10/))) write(6,*) "NG"

 print *,'pass'
 contains

  subroutine sub(cc,dd)
   type(z) ::cc,dd

   if (.not.allocated(cc%za)) write(6,*) "NG"
   if (size(cc%za)/=3) write(6,*) "NG"
   if (any(cc%za/=2)) write(6,*) "NG"
   if (any(lbound(cc%za)/=(/2,3,4,5,6/))) write(6,*) "NG"
   if (any(ubound(cc%za)/=(/2,3,4,5,8/))) write(6,*) "NG"
   if (.not.allocated(dd%za)) write(6,*) "NG"
   if (size(dd%za)/=32) write(6,*) "NG"
   if (any(dd%za/=3)) write(6,*) "NG"
   if (any(lbound(dd%za)/=(/1,3,5,7,9/))) write(6,*) "NG"
   if (any(ubound(dd%za)/=(/2,4,6,8,10/))) write(6,*) "NG"
  end subroutine

end
