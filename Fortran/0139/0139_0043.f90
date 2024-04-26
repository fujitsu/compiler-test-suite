program main
character(len = 4, kind = 4), parameter::a(8) = (/"abcd", "efgh", "ghij", "klmn", &
                                        "mnop", "qrst", "uvwx", "zabc"/)
logical, parameter::b(8) = (/.true., .true., .true., .true., &
                          .true., .true., .true., .true./)
character(len = 4, kind = 4), parameter::c = "zzzz"
character(len = 4, kind = 4)::d(8) = unpack(a,b,c)
character(len = 4, kind = 4)::e(8)
integer::i
integer::z(1)
integer::g(1) = shape(unpack(a,b,c))
integer::h = kind(unpack(a,b,c))
e = unpack(a,b,c)

z = shape(unpack(a,b,c))
do i =1,8
print*, d(i), '---', e(i)
if (d(i).ne.e(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo


call check(g,z)
call check1(h, kind(unpack(a,b,c)))
end

subroutine check(x, y)
integer x(1), y(1)
print*, x,'--',y
if (x(1).ne.y(1)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
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
