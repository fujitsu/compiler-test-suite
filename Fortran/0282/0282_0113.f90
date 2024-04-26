program main
real*16, parameter::a(8) = (/21.0_16, 22.0_16, 23.0_16, 24.0_16, &
                               25.0_16, 26.0_16, 27.0_16, 28.0_16/)
complex*32, parameter::b(8) = (/(1.0_16,1.0_16), (2.0_16,2.0_16), (3.0_16,3.0_16), (4.0_16,4.0_16), &
                            (5.0_16,5.0_16), (6.0_16,6.0_16), (7.0_16,7.0_16), (8.0_16,8.0_16)/)
complex*32::c = dot_product(a,b)
complex*32::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: R16->C32) ???'
else
print*, 'R16 -> C32'
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
