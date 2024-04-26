program main
real*4, parameter::a(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::b(2, 4) = reshape(a, (/2,4/))
complex*8, parameter::c(12) = (/(5.0_4, 25.0_4), (6.0_4, 26.0_4), (7.0_4, 27.0_4), (8.0_4, 28.0_4) , &
                             (1.0_4, 21.0_4), (2.0_4, 22.0_4), (3.0_4, 23.0_4), (4.0_4, 24.0_4) , &
                             (5.0_4, 25.0_4), (6.0_4, 26.0_4), (7.0_4, 27.0_4), (8.0_4, 28.0_4) /)
complex*8, parameter::d(4, 3) = reshape(c, (/4,3/))

complex*16::e(2,3) = matmul(b, d)
complex*16::f(2,3)
integer::i,j

integer::m(2)
integer::g(2) = shape(matmul(b,d))
integer::h = kind(matmul(b,d))
f = matmul(b ,d)
m = shape(matmul(b,d))

do i =1,2
do j =1,3
print*, e(i,j), '--', f(i,j)
if(e(i,j).ne.f(i,j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo

call check(g,m)
call check1(h, kind(matmul(b,d)))

end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
