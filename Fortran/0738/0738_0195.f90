type z
 integer,allocatable,dimension(:)::za
end type
type(z) a(2,2),aa(2,2)
integer b(2)

  b=(/1,2/)
  do i1=1,2
    do i2=1,2
      allocate(aa(i1,i2)%za(i1+i2))
      aa(i1,i2)%za=i1+i2
    enddo
  enddo

  a(b,:)=aa(b,:)

  do i1=1,2
    do i2=1,2
      deallocate(aa(i1,i2)%za)
      if (size(a(i1,i2)%za)/=i1+i2) write(6,*) "NG"
      if (.not.allocated(a(i1,i2)%za)) write(6,*) "NG"
      if (any(a(i1,i2)%za/=i1+i2)) write(6,*) "NG"
    enddo
  enddo

 print *,'pass'
end
