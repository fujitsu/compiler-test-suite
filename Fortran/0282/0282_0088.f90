program main
integer*8, parameter::a(8) = (/21_8, 22_8, 23_8, 24_8, &
                               25_8, 26_8, 27_8, 28_8/)
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