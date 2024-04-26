program main
logical*4, parameter::a(8) = (/.true., .true. , .false., .false. , &
                               .true., .false., .true. , .false. /)
logical*4, parameter::b(0) = reshape(a, (/0/))

logical*4, parameter::c(12) = (/.true., .true. , .false., .false. , &
                               .true., .false., .true. , .false.,&
                               .true.,.false.,.true.,.false. /)

logical*4, parameter::d(0) = reshape(c, (/0/))


integer::h = kind(dot_product(b,d))
call check1(h, kind(dot_product(b,d)))
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
