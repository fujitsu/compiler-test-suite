program main
real*4, parameter::a(8) = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0 /)
real*4, parameter::b(0) = reshape(a, (/0/))

real*4, parameter::c(12) = (/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0 /)

real*4, parameter::d(0) = reshape(c, (/0/))

real*4::e = dot_product(b, d)
real*4::f

integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif

call check1(h, kind(dot_product(b,d)))
end

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
