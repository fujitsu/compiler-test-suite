subroutine sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x21,x22,x23,x24,d,n,res)
  real(8),pointer,contiguous :: a1(:),a2(:),a3(:),a4(:),a5(:),a6(:),a7(:),a8(:),a9(:),a10(:)
  real(8),pointer,contiguous :: a11(:),a12(:),a13(:),a14(:),a15(:),a16(:),a17(:),a18(:)
  real(8),pointer,contiguous :: b1(:,:),b2(:,:)
  real(8),pointer,contiguous :: c1(:),c2(:)
  real(8),dimension(n),target :: x1,x2,x3,x4,x5,x6,x7,x8,x9,x10
  real(8),dimension(n),target :: x11,x12,x13,x14,x15,x16,x17,x18
  real(8),dimension(n),target :: x21,x22
  real(8),dimension(1,n),target :: x23,x24
  integer(8),dimension(1:n) :: d
  real(8) :: res

  a1 => x1
  a2 => x2
  a3 => x3
  a4 => x4
  a5 => x5
  a6 => x6
  a7 => x7
  a8 => x8
  a9 => x9
  a10 => x10
  a11 => x11
  a12 => x12
  a13 => x13
  a14 => x14
  a15 => x15
  a16 => x16
  a17 => x17
  a18 => x18
  a18 => x18
  b1 => x23
  b2 => x24
  c1 => x21
  c2 => x22

  do i=1,n
     a1(i) = a2(i) + a3(i) + a4(i) + a5(i) + a6(i) + a7(i) + a8(i) + a9(i) + a10(i) + a11(i) + a12(i) + a13(i) + a14(i) + a15(i) + a16(i)
     b1(1,i) = b2(1,i) + a17(i) + a18(i) 
     c1(d(i)) = c2(d(i)) 
  enddo

  res = sum(a1) + sum(b1) + sum(c1)

end subroutine sub

program main
  integer,parameter :: n=100
  integer,parameter :: ians=1900
  integer(8),dimension(1:n) :: d
  real(8),dimension(n),target :: x1,x2,x3,x4,x5,x6,x7,x8,x9,x10
  real(8),dimension(n),target :: x11,x12,x13,x14,x15,x16,x17,x18
  real(8),dimension(n),target :: x21,x22
  real(8),dimension(1,n),target :: x23,x24
  real(8) :: res

  interface
     subroutine sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x21,x22,x23,x24,d,n,res)
       implicit none
       real(8),pointer,contiguous :: a1(:),a2(:),a3(:),a4(:),a5(:),a6(:),a7(:),a8(:),a9(:),a10(:)
       real(8),pointer,contiguous :: a11(:),a12(:),a13(:),a14(:),a15(:),a16(:),a17(:),a18(:)
       real(8),pointer,contiguous :: b1(:,:),b2(:,:)
       real(8),pointer,contiguous :: c1(:),c2(:)
       real(8),dimension(n),target :: x1,x2,x3,x4,x5,x6,x7,x8,x9,x10
       real(8),dimension(n),target :: x11,x12,x13,x14,x15,x16,x17,x18
       real(8),dimension(n),target :: x21,x22
       real(8),dimension(1,n),target :: x23,x24
       integer(8),dimension(1:n) :: d
       real(8) :: res
       integer(4) :: n
     end subroutine sub
  end interface

  d = (/(i,i=1,n)/)
  x1=1.
  x2=1.
  x3=1.
  x4=1.
  x5=1.
  x6=1.
  x7=1.
  x8=1.
  x9=1.
  x10=1.
  x11=1.
  x12=1.
  x13=1.
  x14=1.
  x15=1.
  x16=1.
  x17=1.
  x18=1.
  x21=1.
  x22=1.
  x23=1.
  x24=1.

call sub(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x21,x22,x23,x24,d,n,res)

if (int(res) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(res), ians
endif
end program
