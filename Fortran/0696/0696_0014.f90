subroutine sub1(a,b,n,l1_way1,l1_way2,l2_way1,l2_way2)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: way1,way2

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo
end subroutine

subroutine sub2(a,b,n,base1,base2)
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: base1,base2,l1_way1,l1_way2,l2_way1,l2_way2

l1_way1 = base1 - 1
l1_way2 = base1 - 1 + 1
l2_way1 = base2 - 8
l2_way2 = base2 + 2

do j=1,n
   do i=1,n
      a(i) = b(i,j) + 1
   enddo
enddo

end subroutine
program main
integer,parameter :: n=50
integer,parameter :: ians1=100
real(8),dimension(1:n) :: a
real(8),dimension(1:n,1:n) :: b
integer :: base1,base2,l1_way1,l1_way2,l2_way1,l2_way2
a = 0.
b = 1.

base1 = 2
base2 = 10
l1_way1 = base1 + 1 - 1
l1_way2 = base1 - 1
l2_way1 = base2 + 2
l2_way2 = base2 - 8

call sub1(a,b,n,l1_way1,l1_way2,l2_way1,l2_way2)
call sub2(a,b,n,2,10)
if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program
