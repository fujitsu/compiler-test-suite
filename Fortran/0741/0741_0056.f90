type z
 integer,allocatable::za(:)
end type
type(z)::a(5),b(5)
integer,allocatable::pp(:)

  allocate(pp(5))
  pp(1)=1
  pp(2)=2
  pp(3)=1
  pp(4)=4
  pp(5)=1
  where(pp.eq.1)
   a=z(pp)
  end where

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (     allocated(a(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(3)%za)) write(6,*) "NG"
  if (     allocated(a(4)%za)) write(6,*) "NG"
  if (.not.allocated(a(5)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/1,2,1,4,1/))) write(6,*) "NG"
  if (any(a(3)%za/=(/1,2,1,4,1/))) write(6,*) "NG"
  if (any(a(5)%za/=(/1,2,1,4,1/))) write(6,*) "NG"

  where(pp.ne.1)
   b=z(pp)
  end where

  deallocate(pp)

  if (     allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (     allocated(b(3)%za)) write(6,*) "NG"
  if (.not.allocated(b(4)%za)) write(6,*) "NG"
  if (     allocated(b(5)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2,1,4,1/))) write(6,*) "NG"
  if (any(b(4)%za/=(/1,2,1,4,1/))) write(6,*) "NG"

 print *,'pass'
end
