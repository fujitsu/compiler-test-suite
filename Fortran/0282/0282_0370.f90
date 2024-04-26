program main
logical*4, parameter::b(8) = (/.true. , .true. , .true. , .true. , &
                                .true. , .true. , .true. , .true./)
logical*4, parameter::r(4,2) = reshape(b, (/4,2/))
logical, parameter::e = .true.
logical*4::d(8) = pack(r, e)
logical*4::f(8)
integer::i
integer::g(1) = shape(pack(r, e))
integer::p = kind(pack(r,e))
f = pack(r, e)
do i =1,8
print*, d(i), '---', f(i)
if (d(i).neqv.f(i)) then
print*, '??? (Error: L->L) ???'
else
print*, 'L -> L'
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