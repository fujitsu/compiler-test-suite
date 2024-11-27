type x
 integer,allocatable::za(:,:)
end type
type(x),allocatable::a(:,:)
integer,allocatable::pp(:,:)

  allocate(pp(2,2),a(2,2))
   allocate(a(1,1)%za(1,1)) ; a(1,1)%za=0
   allocate(a(2,1)%za(1,1)) ; a(2,1)%za=0
   allocate(a(1,2)%za(1,1)) ; a(1,2)%za=0
   allocate(a(2,2)%za(1,1)) ; a(2,2)%za=0
  pp=reshape((/1,0,1,1/),(/2,2/))

  forall (i=1:2:1)
    where(pp(:,i).ge.1)
      a(:,i)=x(pp)
    end where
  endforall

  deallocate(pp)
  if (.not.allocated(a(1,1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1,2)%za)) write(6,*) "NG"
  if (.not.allocated(a(2,2)%za)) write(6,*) "NG"
  if (any(a(1,1)%za/=reshape((/1,0,1,1/),(/2,2/)))) write(6,*) "NG"
  if (any(a(2,1)%za/=reshape((/0,0/),(/1,1/)))) write(6,*) "NG"
  if (any(a(1,2)%za/=reshape((/1,0,1,1/),(/2,2/)))) write(6,*) "NG"
  if (any(a(2,2)%za/=reshape((/1,0,1,1/),(/2,2/)))) write(6,*) "NG"

 print *,'pass'
end
