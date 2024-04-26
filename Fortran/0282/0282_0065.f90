program main
logical*4, parameter::a(8) = (/.true.,.true.,.false.,.true.,.false.,.true.,.true.,.false./)
integer*4, parameter::c = -3

logical*4::f(8) = cshift(a,c)
logical*4::g(8)
integer::i

integer::z(1)
integer::m(1) = shape(cshift(a,c))
integer::n = kind(cshift(a,c))
g = cshift(a,c)
z = shape(cshift(a,c))

do i =1,8
print*, f(i), '--', g(i)
if(f(i).neqv.g(i)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif
enddo

call check(m,z)
call check1(n, kind(cshift(a,c)))

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
