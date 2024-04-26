program main
integer*4, parameter::a(8) = (/21_4, 22_4, 23_4, 24_4, &
                               25_4, 26_4, 27_4, 28_4/)
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
