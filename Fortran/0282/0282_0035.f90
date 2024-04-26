program main
logical*8, parameter::a(12) = (/ .true._8, .false._8,  .true._8,  .true._8, &
                                .false._8,  .true._8,  .true._8, .false._8, &
							     .true._8, .false._8,  .true._8,  .true._8/)
logical*8, parameter::b(3,4) = reshape(a, (/3,4/))
logical*8::c = any(b)
logical*8::d
integer::f = kind(any(b))

d = any(b)

print*, c, '--', d
if(c.neqv.d) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif

call check1(f, kind(any(b)))

end


subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
