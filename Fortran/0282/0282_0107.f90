program main
real*8, parameter::a(8) = (/1.0_8, 2.0_8, 3.0_8, 4.0_8, &
                             5.0_8, 6.0_8, 7.0_8, 8.0_8/)
real*16, parameter::b(8) = (/21.0_16, 22.0_16, 23.0_16, 24.0_16, &
                             25.0_16, 26.0_16, 27.0_16, 28.0_16/)
real*16::c = dot_product(a,b)
real*16::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: R->R4) ???'
else
print*, 'R -> R4'
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
