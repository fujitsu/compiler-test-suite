program main
integer*8, parameter::a(8) = (/21_8, 22_8, 23_8, 24_8, &
                               25_8, 26_8, 27_8, 28_8/)
integer*8, parameter::b(8) = (/1_8, 2_8, 3_8, 4_8, &
                               5_8, 6_8, 7_8, 8_8/)
integer*8::c = dot_product(a,b)
integer*8::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I->I8) ???'
else
print*, 'I -> I8'
endif

call check(e, kind(dot_product(a,b)))

end


subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
