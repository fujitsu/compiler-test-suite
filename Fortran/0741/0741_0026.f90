type z
  integer(2),allocatable,dimension(:)::za
end type
type y
  type(z)            ,dimension(2)::yy
end type
type (y),allocatable::a(:)
type (y)            ::b(2)

  allocate(a(2))
  kk=1
  forall (k=1:2)
   kk=kk+k
   forall (i=1:2,j=1:2,i<=j)
    a(i)%yy(j)=z((/kk/))
   end forall
  end forall

  if (.not.allocated(a(1)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yy(2)%za)) write(6,*) "NG"
  if (     allocated(a(2)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%yy(2)%za)) write(6,*) "NG"
  if (any(a(1)%yy(1)%za/=(/3/))) write(6,*) "NG"
  if (any(a(1)%yy(2)%za/=(/3/))) write(6,*) "NG"
  if (any(a(2)%yy(2)%za/=(/3/))) write(6,*) "NG"

  forall (i=1:2,j=1:2,i>=j)
    b(i)%yy(j)=a(i)%yy(j)
  end forall

  deallocate(a(1)%yy(1)%za,a(1)%yy(2)%za,a(2)%yy(2)%za)
  deallocate(a)

  if (.not.allocated(b(1)%yy(1)%za)) write(6,*) "NG"
  if (     allocated(b(1)%yy(2)%za)) write(6,*) "NG"
  if (     allocated(b(2)%yy(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%yy(2)%za)) write(6,*) "NG"
  if (any(b(1)%yy(1)%za/=(/3/))) write(6,*) "NG"
  if (any(b(2)%yy(2)%za/=(/3/))) write(6,*) "NG"

 print *,'pass'
end