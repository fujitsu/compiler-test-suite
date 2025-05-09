type z
  integer(2),allocatable::za(:)
end type
type (z),allocatable::a(:)
type (z),allocatable::b(:)
logical(2),allocatable::mask(:)
integer(2),allocatable::vs1(:),vs2(:)

  allocate(vs1(5),vs2(5))
  vs1=(/5,1,3,4,2/)
  vs2=(/1,2,3,4,5/)
  allocate(mask(5))
  mask = (/.true.,.false.,.true.,.false.,.true./)
  allocate(a(5))
  allocate(b(5))

  k=0
  forall(i=1:3:1)
    k=k+i
    where(mask(vs1))
      a(vs2) = z((/k/))
    end where
  end forall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (     allocated(a(4)%za)) write(6,*) "NG"
  if (     allocated(a(5)%za)) write(6,*) "NG"
   if (any(a(1)%za/=(/3/))) write(6,*) "NG"
   if (any(a(2)%za/=(/3/))) write(6,*) "NG"
   if (any(a(3)%za/=(/3/))) write(6,*) "NG"

  forall(i=1:3)
    where(mask(vs1))
      b(vs2) = a(vs1)
    end where
  end forall

  deallocate(vs1,vs2,mask)
  deallocate(a(1)%za,a(2)%za,a(3)%za)

  if (     allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(b(3)%za)) write(6,*) "NG"
  if (     allocated(b(4)%za)) write(6,*) "NG"
  if (     allocated(b(5)%za)) write(6,*) "NG"
   if (any(b(2)%za/=(/3/))) write(6,*) "NG"
   if (any(b(3)%za/=(/3/))) write(6,*) "NG"

 print *,'pass'
end
