real*4 r4(11)/-1.1,-1.2,1.3,1.4,-1.5,1.6,1.7,-1.8,1.9,10.0,-11.1/
real*8 r8(11)/-1.1,-1.2,1.3,1.4,-1.5,1.6,1.7,-1.8,1.9,10.0,11.1/
integer*4 i41(11),i42(11)
integer*8 i81(11),i82(11)

call test1(i81,r4,11)
write(6,*) i81
call test2(i82,r8,11)
write(6,*) i82
call test3(i41,r4,11)
write(6,*) i41
call test4(i42,r8,11)
write(6,*) i42
end	


subroutine test1(a,b,n1)
  integer(kind=8),dimension(n1) :: a
  real(kind=4), dimension(n1) :: b
  do i=1,n1
     a(i) = aint(b(i),kind=8)
  enddo
end subroutine test1


subroutine test2(a,b,n1)
  integer(kind=8),dimension(n1) :: a
  real(kind=8), dimension(n1) :: b
  do i=1,n1
     a(i) = aint(b(i),kind=8)
  enddo
end subroutine test2


subroutine test3(a,b,n1)
  integer(kind=4),dimension(n1) :: a
  real(kind=4), dimension(n1) :: b
  do i=1,n1
     a(i) = aint(b(i),kind=4)
  enddo
end subroutine test3


subroutine test4(a,b,n1)
  integer(kind=4),dimension(n1) :: a
  real(kind=8), dimension(n1) :: b
  do i=1,n1
     a(i) = aint(b(i),kind=4)
  enddo
end subroutine test4
