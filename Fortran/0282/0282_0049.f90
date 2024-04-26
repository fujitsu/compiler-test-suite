program main
logical*4, parameter::a(24) = (/ .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true., &
                                 .true.,  .true.,  .true.,  .true., &
                                .false., .false., .false., .false., &
							     .true., .false.,  .true.,  .true. /)
logical*4, parameter::b(3,4,2) = reshape(a, (/3,4,2/))
integer::d = count(b)
integer::e
integer::o = kind(count(b))
e = count(b)

print*, d, '--', e
if(d.ne.e) then
print*, '??? (Error: L->I) ???'
else
print*, 'L -> I'
endif

call check1(o, kind(count(b)))

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
