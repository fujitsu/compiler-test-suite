program main
logical*4, parameter::b(12) = (/ .true., .false.,  .true.,  .true., &
                                .false.,  .true.,  .true., .false., &
							     .true., .false.,  .true.,  .true./)
integer, parameter::z = 1
logical*4::c = any(b,z)
logical*4::d
integer::f = kind(any(b, z))
d = any(b,z)
print*, c, '--', d
if(c.neqv.d) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
endif

call check1(f, kind(any(b,z)))

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
