program main
logical*4, parameter::a(8) = (/.true._4, .false._4, .true._4, .false._4, &
                               .true._4, .false._4, .true._4, .false._4/)
logical*8, parameter::b(8) = (/.true._8, .true._8, .true._8, .true._8, &
                            .false._8, .false._8, .false._8, .false._8/)
logical*8::c = dot_product(a,b)
logical*8::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.neqv.d) then
print*, '??? (Error: L4->L8) ???'
else
print*, 'L4 -> L8'
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
