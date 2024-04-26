program main
integer*4, parameter::a(8) = (/1,2,3,4,5,6,7,8 /)
integer*4, parameter::b(0) = reshape(a, (/0/))

integer*4, parameter::c(12) = (/1,2,3,4,5,6,7,8,9,10,11,12 /)

integer*4, parameter::d(0) = reshape(c, (/0/))

integer*4::e = dot_product(b, d)
integer*4::f

integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error:) ???'
else
print*, 'pass'
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
