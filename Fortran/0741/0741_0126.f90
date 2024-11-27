type z
  integer ::za1
  integer,allocatable::za2(:)
end type
type (z),allocatable::aa(:,:,:)
logical(1),dimension(:,:,:),allocatable::mask

  allocate(aa(1,4,1))
  allocate(aa(1,1,1)%za2(11:12))
  allocate(aa(1,2,1)%za2(12:13))
  allocate(aa(1,3,1)%za2(13:14))
  allocate(aa(1,4,1)%za2(14:15))
  aa(1,1,1)%za2=(/1,2/)
  aa(1,2,1)%za2=(/2,3/)
  aa(1,3,1)%za2=(/3,4/)
  aa(1,4,1)%za2=(/4,5/)
  allocate(mask(1,2,2))
  mask=reshape((/.false.,.true.,.true.,.true./),(/1,2,2/))

  forall (j=1:1,i=1:2,k=1:1)
    where (mask)
      aa(k:k,i+1:i+2,j:j)=aa(k:k,i:i+1,j:j)
    end where
  end forall

  if (.not.allocated(aa(1,1,1)%za2)) write(6,*) "NG"
  if (.not.allocated(aa(1,2,1)%za2)) write(6,*) "NG"
  if (.not.allocated(aa(1,3,1)%za2)) write(6,*) "NG"
  if (.not.allocated(aa(1,4,1)%za2)) write(6,*) "NG"
  if (any(lbound(aa(1,1,1)%za2)/=(/11/))) write(6,*) "NG"
  if (any(ubound(aa(1,1,1)%za2)/=(/12/))) write(6,*) "NG"
  if (any(lbound(aa(1,2,1)%za2)/=(/12/))) write(6,*) "NG"
  if (any(ubound(aa(1,2,1)%za2)/=(/13/))) write(6,*) "NG"
  if (any(lbound(aa(1,3,1)%za2)/=(/12/))) write(6,*) "NG"
  if (any(ubound(aa(1,3,1)%za2)/=(/13/))) write(6,*) "NG"
  if (any(lbound(aa(1,4,1)%za2)/=(/13/))) write(6,*) "NG"
  if (any(ubound(aa(1,4,1)%za2)/=(/14/))) write(6,*) "NG"
  if (any(aa(1,1,1)%za2/=(/1,2/))) write(6,*) "NG"
  if (any(aa(1,2,1)%za2/=(/2,3/))) write(6,*) "NG"
  if (any(aa(1,3,1)%za2/=(/2,3/))) write(6,*) "NG"
  if (any(aa(1,4,1)%za2/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end
