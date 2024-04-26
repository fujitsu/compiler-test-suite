program main
real*4, parameter::a(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
logical, parameter::b(8) = (/.true., .false., .true., .true., &
                          .true., .true., .false., .true./)
real*4, parameter::c = 11.0_4
real*4::d(8) = unpack(a,b,c)
real*4::e(8)
integer::f
integer::z(1)
integer::g(1) = shape(unpack(a,b,c))
integer::h = kind(unpack(a,b,c))
e = unpack(a,b,c)
z = shape(unpack(a,b,c))

do f =1,8
print*, d(f), '---', e(f)
if (d(f).ne.e(f)) then
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
