type z
  integer,allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a

  allocate(a(3))
  a(1)=z((/1,2/))
  a(2)=z((/3,4/))
  a(3)=z((/5,6/))
  do i=1,3
    a(i)=a(i)
    if (.not.allocated(a(1)%za)) write(6,*) "NG"
    if (.not.allocated(a(2)%za)) write(6,*) "NG"
    if (.not.allocated(a(3)%za)) write(6,*) "NG"
    if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
    if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
    if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"
  enddo

 print *,'pass'
end
