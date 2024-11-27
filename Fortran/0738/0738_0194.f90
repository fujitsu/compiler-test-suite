type z
 integer(4),allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a
type(z)            ,dimension(3)::aa
integer(4)            ,dimension(3)::b
integer(4),allocatable,dimension(:)::bb
integer(4),parameter::p=3

  allocate(a(p),bb(p))
  do i=1,p
    allocate(aa(i)%za(i))
    aa(i)%za=(/(j,j=1,i)/)
  enddo
  b=(/3,2,1/)
  bb=(/1,2,3/)

  a(b)=aa(b)

  deallocate(bb)
  do i=1,p
    deallocate(aa(i)%za)
  enddo

  do i=p,1,-1
    if (.not.allocated(a(i)%za)) write(6,*) "NG"
    if (size(a(i)%za)/=i) write(6,*) "NG"
    if (any(a(i)%za/=(/(j,j=1,i)/))) write(6,*) "NG"
    deallocate(a(i)%za)
  enddo

  deallocate(a)

 print *,'pass'
end
