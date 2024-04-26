program main
real*4, parameter::b(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, 5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::r(2,0) = reshape(b, (/2,0/))
integer, parameter::c = 3
integer, parameter::e = 2
integer::m(3)

integer::g(3) = shape(spread(r, e , c))
integer::p = kind(spread(r,e,c))
m = shape(spread(r,e,c))
call check(g,m)
call check1(p, kind(spread(r,e,c)))
end

subroutine check(x, y)
integer x(3), y(3)
integer::m = 1
print*, x,'--',y
do m=1,3
if (x(m).ne.y(m)) then
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
