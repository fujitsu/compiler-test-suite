program main
real*4, parameter::a(8) = (/21.0_4, 32.0_4, 43.0_4, 54.0_4, 65.0_4, 46.0_4, 37.0_4, 28.0_4 /)
integer*4, parameter::d = 3_4
real*4::f(8) = cshift(a,d)
real*4::g(8)
integer::i
integer::z(1)
integer::m(1) = shape(cshift(a,d))
integer::n = kind(cshift(a,d))
g = cshift(a,d)

z = shape(cshift(a,d))
do i =1,8
print*, f(i), '--', g(i)
if(f(i).ne.g(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(m,z)
call check1(n, kind(cshift(a,d)))

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
