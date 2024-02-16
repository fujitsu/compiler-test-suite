subroutine sub(a,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,n)
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17
do i=1,n
  a(c1(c2(c3(c4(c5(c6(c7(c8(c9(c10(c11(c12(c13(c14(c15(c16(c17(i)))))))))))))))))) = 1.0
enddo
end subroutine
program main
integer,parameter :: n=100
integer,parameter :: ians=100
real(8),dimension(1:n) :: a
integer,dimension(1:n) :: c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17
a = 1.
c1 = (/(i,i=1,n)/)
c2 = c1
c3 = c1
c4 = c1
c5 = c1
c6 = c1
c7 = c1
c8 = c1
c9 = c1
c10 = c1
c11 = c1
c12 = c1
c13 = c1
c14 = c1
c15 = c1
c16 = c1
c17 = c1
call sub(a,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
