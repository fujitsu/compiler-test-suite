subroutine sub1(a,b,c,d,n)
complex(kind=8),dimension(1:n) :: a,b,c,d
do i=1,n
   a(i) = b(i) / (c(i) + d(i))
enddo
end subroutine 

subroutine sub2(a,b,c,d,n)
complex(kind=8),dimension(1:n) :: a,b,c,d
do i=1,n
   a(i) = b(i) / (c(i) + d(I))
enddo
end subroutine 

subroutine sub3(a,b,c,d,n)
complex(kind=8),dimension(1:n) :: a,b,c,d
do i=1,n
   a(i) = b(i) / (c(i) + d(i))
enddo
end subroutine 

program main
integer,parameter :: n=100
complex(kind=8),dimension(1:n) :: a1,a2,a3,a4
complex(kind=8),dimension(1:n) :: b1,b2,b3,b4
complex(kind=8),dimension(1:n) :: c1,c2,c3,c4
a1 = cmplx(2.0_8,4.0_8)
a2 = cmplx(4.0_8,8.0_8)
a3 = cmplx(8.0_8,16.0_8)
a4 = cmplx(1.0_8,1.0_8)
call sub1(a1,a2,a3,a4,n)
b1 = cmplx(2.0_8,4.0_8)
b2 = cmplx(4.0_8,8.0_8)
b3 = cmplx(8.0_8,16.0_8)
b4 = cmplx(1.0_8,1.0_8)
call sub2(b1,b2,b3,b4,n)
c1 = cmplx(2.0_8,4.0_8)
c2 = cmplx(4.0_8,8.0_8)
c3 = cmplx(8.0_8,16.0_8)
c4 = cmplx(1.0_8,1.0_8)
call sub3(c1,c2,c3,c4,n)
if ((a1(1) .eq. b1(1)) .and. (a1(1) .eq. c1(1)))  then
  print *,"ok"
else
  print *,"ng"
endif
end program
