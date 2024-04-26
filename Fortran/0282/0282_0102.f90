program main
logical*4, parameter::a(0)  = (/logical ::/)
logical*4, parameter::b(0)  = (/logical ::/)
logical::c = dot_product(a,b)
logical::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.neqv.d) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
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
