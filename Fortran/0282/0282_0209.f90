program main
real*4, parameter::a(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::b(2, 4) = reshape(a, (/2,4/))
real*4, parameter::c(4) = (/41.0_4, 42.0_4, 43.0_4, 44.0_4/)
real*4::e(2) = matmul(b, c)
real*4::f(2)
integer::i

integer::m(1)
integer::g(1) = shape(matmul(b,c))
integer::h = kind(matmul(b,c))
f = matmul(b ,c)
m = shape(matmul(b,c))
do i =1,2
print*, e(i), '--', f(i)
if(e(i).ne.f(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g,m)
call check1(h, kind(matmul(b,c)))
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
