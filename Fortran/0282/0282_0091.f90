program main
integer*1, parameter::a(8) = (/1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1 /)
integer*1, parameter::b(0) = reshape(a, (/0/))

integer*1, parameter::c(12) = (/1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1,9_1,10_1,11_1,12_1 /)

integer*1, parameter::d(0) = reshape(c, (/0/))

integer*1::e = dot_product(b, d)
integer*1::f

integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error: I->I) ???'
else
print*, 'I -> I'
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
