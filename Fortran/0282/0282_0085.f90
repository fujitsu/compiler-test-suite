program main
integer*4, parameter::a(0) = (/integer ::/)
integer*4, parameter::b(0) = (/integer ::/)
integer::c = dot_product(a,b)
integer::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
print*, c, '---', d
if (c.ne.d) then
print*, '??? (Error: I->I) ???'
else
print*, 'I -> I'
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
