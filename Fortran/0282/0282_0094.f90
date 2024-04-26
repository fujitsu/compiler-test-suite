program main
integer*2, parameter::a(8) = (/1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2 /)
integer*2, parameter::b(0) = reshape(a, (/0/))

integer*2, parameter::c(12) = (/1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2,9_2,10_2,11_2,12_2 /)

integer*2, parameter::d(0) = reshape(c, (/0/))

integer*2::e = dot_product(b, d)
integer*2::f

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
