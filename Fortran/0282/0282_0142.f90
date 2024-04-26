program main
real*4, parameter::b(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                             5.0_4, 6.0_4, 7.0_4, 8.0_4/)
integer*4, parameter::d = 4_4
real*4, parameter::f = 3.0_4
integer*4, parameter::g = 1
real*4::h(8) = eoshift(b,d,f,g)
real*4::m(8)
integer::i
integer::z(1)
integer::n(1) = shape(eoshift(b,d,f,g))
integer::o = kind(eoshift(b,d,f,g))
m = eoshift(b,d,f,g)
z = shape(eoshift(b,d,f,g))

do i=1,8
print*, h(i), '--', m(i)
if(h(i).ne.m(i)) then
print*, '??? (Error: ) ???'
else
print*, 'pass'
endif
enddo

call check(n,z)
call check1(o, kind(eoshift(b,d,f,g)))

end

subroutine check(x, y)
integer x(1), y(1)
integer::i = 1
print*, x,'--',y
if (x(i).ne.y(i)) then
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
