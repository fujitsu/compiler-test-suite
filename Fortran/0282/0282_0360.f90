program main
complex*16, parameter::b(8) = (/  (1.0_8, 2.0_8) ,   (3.0_8, 2.0_8)  ,   (1.0_8, 5.0_8) , (9.0_8, 12.0_8), &
                                (11.0_8, 12.0_8) , (19.0_8, 12.0_8)  , (11.0_8, 32.0_8) , (2.0_8, 2.0_8)/)
complex*16, parameter::r(4,2) = reshape(b, (/4,2/))
logical, parameter::e = .true.
complex*16::d(8) = pack(r, e)
complex*16::f(8)
integer::i
integer::g(1) = shape(pack(r, e))
integer::p = kind(pack(r,e))
f = pack(r, e)
do i =1,8
if (d(i).ne.f(i)) then
print*, '??? (Error: C->C) ???'
exit
else
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