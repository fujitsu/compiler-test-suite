program main
character(len = 2), parameter::b(4) = (/"ab", "bc", "cd", "dk"/)
integer, parameter::c = 3
integer, parameter::e = 2
integer::m(2)
character(len = 2)::d(4,3) = spread(b, e , c)
character(len = 2)::f(4,3)
integer::i,j
integer::g(2) = shape(spread(b, e , c))
integer::p = kind(spread(b,e,c))
f = spread(b, e, c)
m =  shape(spread(b,e,c))
do i =1,4
do j =1,3
print*, d(i, j), '---', f(i, j)
if (d(i, j).ne.f(i, j)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
call check(g,m)
call check1(p, kind(spread(b,e,c)))
end

subroutine check(x, y)
integer x(2), y(2)
integer::m = 1
print*, x,'--',y
do m=1,2
if (x(m).ne.y(m)) then
print*, '??? (Error: Shape) ???'
else
print*, 'Shape OK '
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
