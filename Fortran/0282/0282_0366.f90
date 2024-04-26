program main
integer*4, parameter::b(4) = (/1_4, 2_4, &
                            5_4, 6_4  /)
integer*4, parameter::r(2,2) = reshape(b, (/2,2/))
logical,parameter::y(4) = (/.false., .false., .false.,.false./)
logical,parameter::z(2,2) = reshape(y, (/2,2/))
integer*4, parameter::c(8) = (/5_4, 6_4 , &
                               1_4, 2_4 , &
                               5_4, 6_4 , &
                               1_4, 2_4 /)
integer*4::d(8) = pack(r, z, c)
integer*4::f(8)
integer::i
integer::g(1) = shape(pack(r, z,c))
integer::p = kind(pack(r,z,c))
f = pack(r, z,c )
do i =1,8
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g, shape(pack(r,z,c)))
call check1(p, kind(pack(r,z,c)))
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
