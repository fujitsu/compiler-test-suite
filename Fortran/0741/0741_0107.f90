type z
  integer,allocatable::za(:,:)
end type
type(z),allocatable::a(:)

  allocate(a(3))
  allocate(a(1)%za(5:7,6:7))
  allocate(a(2)%za(5:7,6:7))
  allocate(a(3)%za(5:7,6:7))
  a(1)%za=reshape((/0,1,0,0,1,0/),(/3,2/))
  a(2)%za=reshape((/0,2,0,0,2,0/),(/3,2/))
  a(3)%za=reshape((/0,3,0,0,3,0/),(/3,2/))

  forall (i=6:7:1)
    where(a(1)%za(:,i).eq.1)
      a(:)=a(:)
    end where
  endforall

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (any(lbound(a(1)%za)/=(/5,6/))) write(6,*) "NG"
  if (any(lbound(a(2)%za)/=(/5,6/))) write(6,*) "NG"
  if (any(lbound(a(3)%za)/=(/5,6/))) write(6,*) "NG"
  if (any(ubound(a(1)%za)/=(/7,7/))) write(6,*) "NG"
  if (any(ubound(a(2)%za)/=(/7,7/))) write(6,*) "NG"
  if (any(ubound(a(3)%za)/=(/7,7/))) write(6,*) "NG"
  if (any(a(1)%za/=reshape((/0,1,0,0,1,0/),(/3,2/)))) write(6,*) "NG"
  if (any(a(2)%za/=reshape((/0,2,0,0,2,0/),(/3,2/)))) write(6,*) "NG"
  if (any(a(3)%za/=reshape((/0,3,0,0,3,0/),(/3,2/)))) write(6,*) "NG"

 print *,'pass'
end