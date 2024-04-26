program main
logical*8, parameter::a(24) = (/ .true._8,  .true._8,  .true._8,  .true._8, &
                                .false._8, .false._8, .false._8, .false._8, &
							     .true._8, .false._8,  .true._8,  .true._8, &
                                 .true._8,  .true._8,  .true._8,  .true._8, &
                                .false._8, .false._8, .false._8, .false._8, &
							     .true._8, .false._8,  .true._8,  .true._8 /)
integer*8::d = count(a)
integer*8::e
integer::o = kind(count(a))
e = count(a)

print*, d,'--', e
if(d.ne.e) then
print*, '??? (Error: L->I) ???'
else
print*, 'L -> I'
endif

call check1(o, kind(count(a)))

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
