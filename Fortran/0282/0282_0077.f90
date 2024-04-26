program main
complex*16, parameter::a(8) = (/(1.0_8, 11.0_8), (2.0_8, 10.0_8), (3.0_8, 9.0_8), (4.0_8, 8.0_8) , &
                                (5.0_8,  7.0_8), (6.0_8,  6.0_8), (7.0_8, 5.0_8), (8.0_8, 4.0_8)/)
complex*32, parameter::b(8) = (/(21.0_16, 31.0_16), (22.0_16, 30.0_16), (23.0_16, 29.0_16), (24.0_16, 28.0_16) , &
                               (25.0_16, 27.0_16), (26.0_16, 26.0_16), (27.0_16, 25.0_16), (28.0_16, 23.0_16)/)
complex*32::c = dot_product(b,a)
complex*32::d
integer::e = kind(dot_product(b,a))
d = dot_product(b,a)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: C->C) ???'
else
print*, 'C -> C'
endif

call check(e, kind(dot_product(b,a)))

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