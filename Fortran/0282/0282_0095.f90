program main
integer*4, parameter::a(8) = (/21_4, 22_4, 23_4, 24_4, &
                               25_4, 26_4, 27_4, 28_4/)
complex*16, parameter::b(8) = (/(1.0_8,1.0_8), (2.0_8,2.0_8), (3.0_8,3.0_8), (4.0_8,4.0_8), &
                            (5.0_8,5.0_8), (6.0_8,6.0_8), (7.0_8,7.0_8), (8.0_8,8.0_8)/)
complex*16::c = dot_product(a,b)
complex*16::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I4->C16) ???'
else
print*, 'I4 -> C16'
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
