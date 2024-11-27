type x
 integer,allocatable::za(:,:)
end type
type(x),allocatable::a(:),b(:)
integer,allocatable::pp(:,:)

  allocate(pp(2,2),a(2),b(2))
   allocate(a(1)%za(1,1)) ; a(1)%za=0
   allocate(a(2)%za(1,1)) ; a(2)%za=0
  pp=reshape((/1,0,0,1/),(/2,2/))

  where(pp(:,1).ge.1)
    a(:)=x(pp)
    b(:)=x(pp+1)
  end where

  deallocate(pp)
  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(1)%za/=reshape((/1,0,0,1/),(/2,2/)))) write(6,*) "NG"
  if (any(a(2)%za/=reshape((/0,0/),(/1,1/)))) write(6,*) "NG"
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (     allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=reshape((/2,1,1,2/),(/2,2/)))) write(6,*) "NG"

 print *,'pass'
end
