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

call test051()
print *,'pass'
end

subroutine test051()
  use mod
  integer,parameter::n1=2,n2=2
  type(y)  ,allocatable,dimension(:)::a,b

  allocate(a(2))
  allocate(b(1))
  allocate(b(1)%ya(n1,n2))
  do i1=1,n1
    do i2=1,n2
      b(1)%ya(i1,i2)%zi = (/(j,j=i1,i1+2)/)
      b(1)%ya(i1,i2)%zc = (/'abcde','fghij','klmno'/)
      b(1)%ya(i1,i2)%zr = REAL(i1+i2)
      allocate(b(1)%ya(i1,i2)%za(i1*i2+1))
      b(1)%ya(i1,i2)%za=i1*i2
    enddo
  enddo

  a(2:2) = b

  do i1=1,n1
    do i2=1,n2
      deallocate(b(1)%ya(i1,i2)%za)
      if (.not.allocated(a(2)%ya(i1,i2)%za)) write(6,*) "NG"
    enddo
  enddo
  if (allocated(a(1)%ya)) write(6,*) "NG"
  deallocate(b(1)%ya)

  if (any(a(2)%ya(1,1)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(2)%ya(1,2)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(2)%ya(2,1)%zi/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(2)%ya(2,2)%zi/=(/2,3,4/))) write(6,*) "NG"
  if (any(a(2)%ya(1,1)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
  if (any(a(2)%ya(1,2)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
  if (any(a(2)%ya(2,1)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
  if (any(a(2)%ya(2,2)%zc/=(/'abcde','fghij','klmno'/))) write(6,*) "NG"
  if (abs(a(2)%ya(1,1)%zr(1)-2.0D0).gt.1.0D-5) write(6,*) "NG"
  if (abs(a(2)%ya(1,2)%zr(1)-3.0D0).gt.1.0D-5) write(6,*) "NG"
  if (abs(a(2)%ya(2,1)%zr(1)-3.0D0).gt.1.0D-5) write(6,*) "NG"
  if (abs(a(2)%ya(2,2)%zr(1)-4.0D0).gt.1.0D-5) write(6,*) "NG"
  if (any(a(2)%ya(1,1)%za/=(/1,1/))) write(6,*) "NG"
  if (any(a(2)%ya(1,2)%za/=(/2,2,2/))) write(6,*) "NG"
  if (any(a(2)%ya(2,1)%za/=(/2,2,2/))) write(6,*) "NG"
  if (any(a(2)%ya(2,2)%za/=(/4,4,4,4,4/))) write(6,*) "NG"

end subroutine
