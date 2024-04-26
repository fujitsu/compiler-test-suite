program main
logical*4, parameter::b(12) = (/ .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true./)
logical*4::c = all(b)
logical*4::d
integer::f = kind(all(b))
d = all(b)
print*, c, '--', d
if(c.neqv.d) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif

call check1(f, kind(all(b)))

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
