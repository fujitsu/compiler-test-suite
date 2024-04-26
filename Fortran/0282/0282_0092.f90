program main
integer*1, parameter::a(8) = (/21_1, 22_1, 23_1, 24_1, &
                               25_1, 26_1, 27_1, 28_1/)
integer*4, parameter::b(8) = (/1_4, 2_4, 3_4, 4_4, &
                            5_4, 6_4, 7_4, 8_4/)
integer*4::c = dot_product(a,b)
integer*4::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I1->I4) ???'
else
print*, 'I1 -> I4'
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
