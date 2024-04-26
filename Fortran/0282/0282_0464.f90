program main
real*8, parameter::b = 12.3_8
integer, parameter::c = 3
integer, parameter::e = 1
integer::m(1)
real*8::d(3) = spread(b, e , c)
real*8::f(3)
integer::j
integer::g(1) = shape(spread(b, e , c))
integer::p = kind(spread(b,e,c))
f = spread(b, e, c)
m = shape(spread(b,e,c))
do j =1,3
print*, d(j), '---', f(j)
if (d(j).ne.f(j)) then
print*, '??? (Error: R8->R) ???'
else
print*, 'R8 -> R'
endif
enddo
call check(g,m)
call check1(p, kind(spread(b,e,c)))
end

subroutine check(x, y)
integer x(1), y(1)
print*, x,'--',y
if (x(1).ne.y(1)) then
print*, '??? (Error: Shape) ???'
else
print*, 'Shape OK '
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
