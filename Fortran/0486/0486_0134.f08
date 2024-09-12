subroutine ssx
complex*8, parameter::a(8) = (/(1.0_4, 11.0_4), (2.0_4, 10.0_4), (3.0_4, 9.0_4), (4.0_4, 8.0_4) , &
                               (5.0_4,  7.0_4), (6.0_4,  6.0_4), (7.0_4, 5.0_4), (8.0_4, 4.0_4)/)
real*8, parameter::b(8) = (/21.0_8, 22.0_8, 23.0_8, 24.0_8, &
                            25.0_8, 26.0_8, 27.0_8, 28.0_8/)
complex*8::c = dot_product(a,b)
complex*8::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
if (abs(c-d) > 0.0001)then
print*, '??? (Error: C->C) ???'
else
endif

call check(e, kind(dot_product(a,b)))
end
subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
call ssx
print *,'pass'
end
