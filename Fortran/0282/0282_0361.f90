program main
complex*32, parameter::b(8) = (/  (1.0_16, 2.0_16) ,   (3.0_16, 2.0_16)  ,   (1.0_16, 5.0_16) , (9.0_16, 12.0_16), &
                                 (11.0_16, 12.0_16) , (19.0_16, 12.0_16)  , (11.0_16, 32.0_16) , (2.0_16, 2.0_16)/)
complex*32, parameter::r(4,2) = reshape(b, (/4,2/))
logical, parameter::e = .true.
complex*32::d(8) = pack(r, e)
complex*32::f(8)
integer::i
integer::g(1) = shape(pack(r, e))
integer::p = kind(pack(r,e))
f = pack(r, e)
do i =1,8
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: C->C) ???'
else
print*, 'C -> C'
endif
enddo

call check(g, shape(pack(r,e)))
call check1(p, kind(pack(r,e)))
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