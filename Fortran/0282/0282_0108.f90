program main
real*4, parameter::a(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::b(8) = (/21.0_4, 22.0_4, 23.0_4, 24.0_4, &
                            25.0_4, 26.0_4, 27.0_4, 28.0_4/)
real*4::c = dot_product(a,b)
real*4::d
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
