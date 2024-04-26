program main
integer*8, parameter::a(8) = (/1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8 /)
integer*8, parameter::b(0) = reshape(a, (/0/))

integer*8, parameter::c(12) = (/1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8,11_8,12_8 /)

integer*8, parameter::d(0) = reshape(c, (/0/))

integer*8::e = dot_product(b, d)
integer*8::f

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
