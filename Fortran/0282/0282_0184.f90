program main
complex*32, parameter::a(8) = (/(1.0_16, 21.0_16), (2.0_16, 22.0_16), (3.0_16, 23.0_16), (4.0_16, 24.0_16) , &
                                (5.0_16, 25.0_16), (6.0_16, 26.0_16), (7.0_16, 27.0_16), (8.0_16, 28.0_16) /)
complex*32, parameter::b(2, 4) = reshape(a, (/2,4/))
real*8, parameter::c(12) = (/41.0_8, 42.0_8, 43.0_8, 44.0_8, &
                             45.0_8, 46.0_8, 47.0_8, 48.0_8, &
							 49.0_8, 50.0_8, 51.0_8, 52.0_8/)
real*8, parameter::d(4, 3) = reshape(c, (/4,3/))

complex*32::e(2,3) = matmul(b, d)
complex*32::f(2,3)
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
