program main
complex*16, parameter::a(8) = (/(1.0_8, 11.0_8), (2.0_8, 10.0_8), (3.0_8, 9.0_8), (4.0_8, 8.0_8) , &
                               (5.0_8,  7.0_8), (6.0_8,  6.0_8), (7.0_8, 5.0_8), (8.0_8, 4.0_8)/)
complex*16, parameter::b(8) = (/(21.0_8, 31.0_8), (22.0_8, 30.0_8), (23.0_8, 29.0_8), (24.0_8, 28.0_8) , &
                               (25.0_8, 27.0_8), (26.0_8, 26.0_8), (27.0_8, 25.0_8), (28.0_8, 23.0_8)/)
complex*16::c = dot_product(a,b)
complex*16::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: C->C) ???'
else
print*, 'C -> C'
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