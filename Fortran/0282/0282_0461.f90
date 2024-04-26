program main
real*4, parameter::b(16) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, 5.0_4, 6.0_4, 7.0_4, 8.0_4, 9.0_4, 10.0_4, 11.0_4, 12.0_4, 13.0_4, 14.0_4, 15.0_4, 16.0_4/)
real*4, parameter::r(2,2,2,2) = reshape(b, (/2,2,2,2/))
integer, parameter::c = 3
integer, parameter::e = 2
integer::m(5)
real*4::d(2,3,2,2,2) = spread(r, e , c)
real*4::f(2,3,2,2,2)
integer::i,j
integer::g(5) = shape(spread(r, e , c))
integer::p = kind(spread(r,e,c))
f = spread(r, e, c)
m = shape(spread(r,e,c))
do i =1,2
do j =1,3
do k =1,2
do kk =1,2
do jj =1,2
print*, d(i, j, k, kk, jj), '---', f(i, j, k, kk, jj)
if (d(i, j, k, kk, jj).ne.f(i, j, k, kk, jj)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
enddo
enddo
enddo
call check(g,m)
call check1(p, kind(spread(r,e,c)))
end

subroutine check(x, y)
integer x(5), y(5)
integer::m = 1
print*, x,'--',y
do m=1,5
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
