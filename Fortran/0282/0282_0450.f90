program main
complex*8, parameter::b = (2.0_4 , 8.5_4)
integer, parameter::c = 5
integer, parameter::e = 1
integer::m(1)
complex*8::d(5) = spread(b, e , c)
complex*8::f(5)
integer, parameter::g(1) = shape(spread(b, e , c))
integer::p = kind(spread( b, e, c))
integer::j
f = spread(b, e, c)
m = shape(spread(b,e,c))
print*, d, '---', f
do j=1,4
if (d(j).ne.f(j)) then
print*, '??? (Error: C8->C) ???'
else
print*, 'C8 -> C'
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
