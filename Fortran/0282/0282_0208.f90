program main
real*4, parameter::a(4) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4/)
real*4, parameter::c(12) = (/41.0_4, 42.0_4, 43.0_4, 44.0_4, &
                             45.0_4, 46.0_4, 47.0_4, 48.0_4, &
							 49.0_4, 50.0_4, 51.0_4, 52.0_4/)
real*4, parameter::d(4, 3) = reshape(c, (/4,3/))

real*4::e(3) = matmul(a, d)
real*4::f(3)
integer::j
integer::m(1)
integer::g(1) = shape(matmul(a,d))
integer::h = kind(matmul(a,d))
f = matmul(a ,d)

m = shape(matmul(a,d))
do j =1,3
print*, e(j), '--', f(j)
if(e(j).ne.f(j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g,m)
call check1(h, kind(matmul(a,d)))

end

subroutine check(x, y)
integer x(1), y(1)
print*, x,'--',y
if (x(1).ne.y(1)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
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
