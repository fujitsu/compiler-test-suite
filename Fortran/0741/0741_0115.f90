type z
  integer,allocatable::za(:)
end type
type(z),allocatable::a(:),b(:)
integer,allocatable::pp(:,:)

  allocate(a(10),b(10))
  allocate(pp(10,1))
  pp=reshape((/1,2,3,4,5,6,7,8,9,0/),(/10,1/))

  forall (i=0:3:1,i==1)
  where(pp(:,i).eq.0)
    a=z((/pp(1,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.1)
    a=z((/pp(2,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.2)
    a=z((/pp(3,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.3)
    a=z((/pp(4,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.4)
    a=z((/pp(5,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.5)
    a=z((/pp(6,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.6)
    a=z((/pp(7,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.7)
    a=z((/pp(8,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.8)
    a=z((/pp(9,i)/))
    b=a
    a=a
  elsewhere(pp(:,i).eq.9)
    a=z((/pp(10,i)/))
    b=a
    a=a
  end where

  end forall
  deallocate(pp)

  do i=1,10
    if (.not.allocated(a(i)%za)) write(6,*) "NG"
    if (size(a(i)%za)/=1) write(6,*) "NG"
    if (.not.allocated(b(i)%za)) write(6,*) "NG"
    if (size(b(i)%za)/=1) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3/))) write(6,*) "NG"
  if (any(a(3)%za/=(/4/))) write(6,*) "NG"
  if (any(a(4)%za/=(/5/))) write(6,*) "NG"
  if (any(a(5)%za/=(/6/))) write(6,*) "NG"
  if (any(a(6)%za/=(/7/))) write(6,*) "NG"
  if (any(a(7)%za/=(/8/))) write(6,*) "NG"
  if (any(a(8)%za/=(/9/))) write(6,*) "NG"
  if (any(a(9)%za/=(/0/))) write(6,*) "NG"
  if (any(a(10)%za/=(/1/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/3/))) write(6,*) "NG"
  if (any(b(3)%za/=(/4/))) write(6,*) "NG"
  if (any(b(4)%za/=(/5/))) write(6,*) "NG"
  if (any(b(5)%za/=(/6/))) write(6,*) "NG"
  if (any(b(6)%za/=(/7/))) write(6,*) "NG"
  if (any(b(7)%za/=(/8/))) write(6,*) "NG"
  if (any(b(8)%za/=(/9/))) write(6,*) "NG"
  if (any(b(9)%za/=(/0/))) write(6,*) "NG"
  if (any(b(10)%za/=(/1/))) write(6,*) "NG"

 print *,'pass'
end
