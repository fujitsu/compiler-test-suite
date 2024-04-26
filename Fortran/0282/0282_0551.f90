program main
real*4, parameter::a(0) = (/real::/)
logical, parameter::b(0) = (/logical::/)
real*4, parameter::c = 11.0_4
real*4::d(0) = unpack(a,b,c)
real*4 ::e(0)
integer::z(1)
integer::g(1) = shape(unpack(a,b,c))
integer::h = kind(unpack(a,b,c))
e = unpack(a,b,c)
z = shape(unpack(a,b,c))
if ( g(1) /= z(1)) then
   print*, "Error "
else
   print *, "OK"
endif
call check(g,z)
call check1(h, kind(unpack(a,b,c)))
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
