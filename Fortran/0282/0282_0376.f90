program main
real*4, parameter::b(8) = (/1.0_4, 2.0_4, 3.0_4, 4.0_4, &
                            5.0_4, 6.0_4, 7.0_4, 8.0_4/)
real*4, parameter::r(4,2) = reshape(b, (/4,2/))
real*4::d(7) = pack(r, r.ne.2.0)
real*4::f(7)
integer::i
integer::g(1) = shape(pack(r, r.ne.2.0))
integer::p = kind(pack(r,r.ne.2.0))
f = pack(r, r.ne.2.0)
do i =1,7
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo

call check(g, shape(pack(r,r.ne.2.0)))
call check1(p, kind(pack(r,r.ne.2.0)))
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