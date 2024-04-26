program main
complex*8, parameter::a(8) = (/(1.0_4, 11.0_4), (2.0_4, 10.0_4), (3.0_4, 9.0_4), (4.0_4, 8.0_4) , &
                               (5.0_4,  7.0_4), (6.0_4,  6.0_4), (7.0_4, 5.0_4), (8.0_4, 4.0_4)/)
complex*8, parameter::b(8) = (/(21.0_4, 31.0_4), (22.0_4, 30.0_4), (23.0_4, 29.0_4), (24.0_4, 28.0_4) , &
                               (25.0_4, 27.0_4), (26.0_4, 26.0_4), (27.0_4, 25.0_4), (28.0_4, 23.0_4)/)
complex*8::c = dot_product(a,b)
complex*8::d
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