program main
real*4, parameter::b(4) = (/1.0_4, 2.0_4, &
                            5.0_4, 6.0_4  /)
real*4, parameter::r(2,2) = reshape(b, (/2,2/))
logical,parameter::y(4) = (/.true., .false., .true.,.false./)
logical,parameter::z(2,2) = reshape(y, (/2,2/))
real*4, parameter::c(8) = (/5.0_4, 6.0_4 , &
                            1.0_4, 2.0_4 , &
                            5.0_4, 6.0_4 , &
                            1.0_4, 2.0_4 /)
real*4::d(2) = pack(r, z)
real*4::f(2)
integer::i
integer::g(1) = shape(pack(r, z))
integer::p = kind(pack(r,z))
f = pack(r, z)
do i =1,2
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g, shape(pack(r,z)))
call check1(p, kind(pack(r,z)))
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