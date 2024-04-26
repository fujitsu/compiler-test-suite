program main
character(len = 2, kind = 4), parameter::b(4) = (/"ab", "bc", &
                                                  "cd", "dw"/)
character(len = 2, kind = 4), parameter::r(2,2) = reshape(b, (/2,2/))
character(len = 2, kind = 4), parameter::c(4) = (/"db", "dc", &
                                                  "dd", "de"/)
logical, parameter::e = .true.
character(len = 2, kind = 4), parameter::d(4) = pack(r, e , c)
character(len = 2, kind = 4)::f(4)
integer::i
integer::g(1) = shape(pack(r, e , c))
integer::p = kind(pack(r,e,c))
f = pack(r, e, c)

print*,ichar(d(1:1)),'---', ichar(f(1:1))
print*,ichar(d(2:2)),'---', ichar(f(2:2))

do i =1,4
print*, d(i), '---', f(i)
if (d(i).ne.f(i)) then
print*, '??? (Error: UTF->UTF) ???'
else
print*, 'UTF -> UTF'
endif
enddo

call check(g, shape(pack(r,e,c)))
call check1(p, kind(pack(r,e,c)))
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
