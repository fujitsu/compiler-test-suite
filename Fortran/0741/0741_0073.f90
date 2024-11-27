type x
 integer,allocatable::za(:,:)
end type
type(x),allocatable::a(:),b(:),c(:)
integer,allocatable::pp(:,:)

  allocate(pp(2,2),a(2),b(2),c(2))
   allocate(a(1)%za(1,1)) ; a(1)%za=0
   allocate(a(2)%za(1,1)) ; a(2)%za=0
  pp=reshape((/1,0,0,1/),(/2,2/))

  where(pp(:,1).ge.1)
    a(:)=x(pp)
    b(:)=x(pp+1)
    c(:)=a(:)
  end where

  deallocate(pp)
  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (any(a(1)%za/=reshape((/1,0,0,1/),(/2,2/)))) write(6,*) "NG"
  deallocate(a(1)%za)
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(2)%za/=reshape((/0,0/),(/1,1/)))) write(6,*) "NG"
  deallocate(a(2)%za)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (any(b(1)%za/=reshape((/2,1,1,2/),(/2,2/)))) write(6,*) "NG"
  deallocate(b(1)%za)
  if (     allocated(b(2)%za)) write(6,*) "NG"
  if (.not.allocated(c(1)%za)) write(6,*) "NG"
  if (any(c(1)%za/=reshape((/1,0,0,1/),(/2,2/)))) write(6,*) "NG"
  deallocate(c(1)%za)
  if (     allocated(c(2)%za)) write(6,*) "NG"

 print *,'pass'
end
