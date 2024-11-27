module mod
  type z
    integer(4)            ,dimension(3)::zi
    character(5)          ,dimension(3)::zc
    real(8)               ,dimension(1)::zr
    integer(4),allocatable,dimension(:)::za
  endtype
  type y
    type(z)   ,allocatable,dimension(:,:)::ya
  end type
end module

call test()
print *,'pass'
end

subroutine test()
  use mod
  integer,parameter::n1=2,n2=2
  type(y)  ,allocatable,dimension(:,:)::a
  type(y)              ,dimension(2)::b

  allocate(b(1)%ya(n1,n2))
  allocate(b(2)%ya(n1,n2))
  allocate(a(2,2))
  allocate(a(1,1)%ya(n1,n2))
  allocate(a(2,2)%ya(n1,n2))
  do i1=1,n1
    do i2=1,n2
      b(1)%ya(i1,i2)%zi = (/(j,j=i1,i1+2)/)
      b(1)%ya(i1,i2)%zc = (/'abcde','fghij','klmno'/)
      b(1)%ya(i1,i2)%zr = REAL(i1+i2)
      allocate(b(1)%ya(i1,i2)%za(i1*i2+1))
      b(1)%ya(i1,i2)%za=i1*i2
    enddo
  enddo

  a(1,1)%ya = b(1)%ya
  a(2,2) = a(1,1)

  do i1=1,n1
    do i2=1,n2
      deallocate(b(1)%ya(i1,i2)%za)
    enddo
  enddo

  do k=1,2
    if (.not.allocated(a(k,k)%ya)) write(6,*) "NG"
    if (any(a(k,k)%ya(1,1)%zi/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(k,k)%ya(1,2)%zi/=(/1,2,3/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,1)%zi/=(/2,3,4/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,2)%zi/=(/2,3,4/))) write(6,*) "NG"
    if (any(a(k,k)%ya(1,1)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
    if (any(a(k,k)%ya(1,2)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,1)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,2)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
    if (abs(a(k,k)%ya(1,1)%zr(1)-2.0D0).gt.1.0D-5) write(6,*) "NG"
    if (abs(a(k,k)%ya(1,2)%zr(1)-3.0D0).gt.1.0D-5) write(6,*) "NG"
    if (abs(a(k,k)%ya(2,1)%zr(1)-3.0D0).gt.1.0D-5) write(6,*) "NG"
    if (abs(a(k,k)%ya(2,2)%zr(1)-4.0D0).gt.1.0D-5) write(6,*) "NG"
    if (.not.allocated(a(k,k)%ya(1,1)%za)) write(6,*) "NG"
    if (.not.allocated(a(k,k)%ya(1,2)%za)) write(6,*) "NG"
    if (.not.allocated(a(k,k)%ya(2,1)%za)) write(6,*) "NG"
    if (.not.allocated(a(k,k)%ya(2,2)%za)) write(6,*) "NG"
    if (any(a(k,k)%ya(1,1)%za/=(/1,1/))) write(6,*) "NG"
    if (any(a(k,k)%ya(1,2)%za/=(/2,2,2/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,1)%za/=(/2,2,2/))) write(6,*) "NG"
    if (any(a(k,k)%ya(2,2)%za/=(/4,4,4,4,4/))) write(6,*) "NG"
  enddo

end subroutine
