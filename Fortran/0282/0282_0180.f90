program main
complex*16, parameter::a(8) = (/(1.0_8, 21.0_8), (2.0_8, 22.0_8), (3.0_8, 23.0_8), (4.0_8, 24.0_8) , &
                                (5.0_8, 25.0_8), (6.0_8, 26.0_8), (7.0_8, 27.0_8), (8.0_8, 28.0_8) /)
complex*16, parameter::b(2, 4) = reshape(a, (/2,4/))
complex*16, parameter::c(12) = (/(5.0_8, 25.0_8), (6.0_8, 26.0_8), (7.0_8, 27.0_8), (8.0_8, 28.0_8) , &
                                 (1.0_8, 21.0_8), (2.0_8, 22.0_8), (3.0_8, 23.0_8), (4.0_8, 24.0_8) , &
                                 (5.0_8, 25.0_8), (6.0_8, 26.0_8), (7.0_8, 27.0_8), (8.0_8, 28.0_8) /)
complex*16, parameter::d(4, 3) = reshape(c, (/4,3/))

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
