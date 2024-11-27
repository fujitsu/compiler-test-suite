integer(4),parameter::p1=2,p2=4
type z
 integer(4),allocatable,dimension(:)::za
end type
type(z)             ,dimension(p1,p2)::a,aa
integer(2)          ,dimension(p1)::b
integer(2)          ,dimension(p2)::bb

  do i1=1,p1
    do i2=1,p2
      allocate(aa(i1,i2)%za(i1+i2))
      aa(i1,i2)%za=i1+i2
    enddo
  enddo
  b=(/(j,j=1,p1)/)
  bb=(/(j,j=1,p2)/)

  do i1=1,p1
  a(i1,bb)=aa(i1,bb)
  enddo

  do i1=1,p1
    do i2=1,p2
      deallocate(aa(i1,i2)%za)
      if (size(a(i1,i2)%za)/=i1+i2) write(6,*) "NG"
      if (.not.allocated(a(i1,i2)%za)) write(6,*) "NG"
      if (any(a(i1,i2)%za/=i1+i2)) write(6,*) "NG"
    enddo
  enddo

 print *,'pass'
end
