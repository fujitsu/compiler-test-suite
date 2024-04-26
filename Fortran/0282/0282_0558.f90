program main
character(len=2,kind=4), parameter::a(12) = (/"ij", "kl", "mn", "op", &
                             "ab","bc","ef","gh", &
                                                         "xy", "vw", "tu", "rs"/)

logical, parameter::b(8) = (/.true., .false., .true. , .true., &
                             .true., .true. , .false., .true./)

logical, parameter::m(4 ,0) = reshape(b, (/4,0/))

character(len=2, kind=4), parameter::c(8) = (/"ab", "bc", "cd", "ef" , &
                            "gh", "ij", "kl", "mn" /)

character(len=2,kind=4),parameter::n(4,0) = reshape(c,(/4,0/))

integer::z(2)
integer::g(2) = shape(unpack(a,m,n))
integer::h = kind(unpack(a,m,n))
z = shape(unpack(a,m,n))

call check(g,z)
call check1(h, kind(unpack(a,m,n)))
end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i = 1,2
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
