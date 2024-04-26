program main
integer*1, parameter::a(8) = (/21_1, 22_1, 23_1, 24_1, &
                               25_1, 26_1, 27_1, 28_1/)
real*4, parameter::b(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4::c = dot_product(a,b)
real*4::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I->R4) ???'
else
print*, 'I -> R4'
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
