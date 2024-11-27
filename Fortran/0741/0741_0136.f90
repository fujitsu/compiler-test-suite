type z
  integer(2),allocatable::za2(:)
end type
type (z),allocatable::a(:,:)
type (z),allocatable::b(:,:)
logical(2),allocatable::mask(:,:)
integer(2),allocatable::vs1(:),vs2(:)

  allocate(vs1(2),vs2(2))
  vs1=(/1,2/)
  vs2=(/2,1/)
  allocate(mask(2,2))
  mask = reshape((/.true.,.false.,.false.,.true./),(/2,2/))
  allocate(a(2,2))
  allocate(b(2,2))

  forall(i=1:5:1,i<3)
    where(mask(vs1,i))
      a(vs2,i) = z((/i,i+1/))
    end where
  end forall

  if (     allocated(a(1,1)%za2)) write(6,*) "NG"
  if (.not.allocated(a(2,1)%za2)) write(6,*) "NG"
  if (.not.allocated(a(1,2)%za2)) write(6,*) "NG"
  if (     allocated(a(2,2)%za2)) write(6,*) "NG"
    if (any(a(2,1)%za2/=(/1,2/))) write(6,*) "NG"
    if (any(a(1,2)%za2/=(/2,3/))) write(6,*) "NG"

  forall(i=1:5:1,i<3)
    where(mask(vs2,i))
      b(vs1,i) = a(vs1,i)
    end where
  end forall

  deallocate(vs1,vs2,mask)
  deallocate(a(2,1)%za2,a(1,2)%za2)
  deallocate(a)

  if (     allocated(b(1,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(2,1)%za2)) write(6,*) "NG"
  if (.not.allocated(b(1,2)%za2)) write(6,*) "NG"
  if (     allocated(b(2,2)%za2)) write(6,*) "NG"
    if (any(b(2,1)%za2/=(/1,2/))) write(6,*) "NG"
    if (any(b(1,2)%za2/=(/2,3/))) write(6,*) "NG"

 print *,'pass'
end
