type z
 integer(4),allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a
type(z),allocatable,dimension(:)::aa
integer(4),allocatable,dimension(:)::b
integer(4),parameter::p=3

  allocate(a(p),aa(p),b(p))
  do i=1,p
    allocate(aa(i)%za(i))
    aa(i)%za=(/(j,j=1,i)/)
  enddo
  b=(/3,2,1/)

  a(b)=aa(b)

  do i=1,p
    if (.not.allocated(a(i)%za)) write(6,*) "NG"
    if (size(a(i)%za)/=i) write(6,*) "NG"
    if (any(a(i)%za/=(/(j,j=1,i)/))) write(6,*) "NG"
  enddo

 print *,'pass'
end
