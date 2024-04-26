program main
integer*4, parameter::a(8) = (/21_4, 22_4, 23_4, 24_4, &
                               25_4, 26_4, 27_4, 28_4/)
complex*32, parameter::b(8) = (/(1.0_16,1.0_16), (2.0_16,2.0_16), (3.0_16,3.0_16), (4.0_16,4.0_16), &
                            (5.0_16,5.0_16), (6.0_16,6.0_16), (7.0_16,7.0_16), (8.0_16,8.0_16)/)

complex*16::c = dot_product(b,a)
complex*16::d
integer::e = kind(dot_product(b,a))
d = dot_product(b,a)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I4->C32) ???'
else
print*, 'I4 -> C32'
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
