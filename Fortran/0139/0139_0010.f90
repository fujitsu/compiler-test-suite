program main
character(len = 2,kind = 4), parameter::a(8) = (/"ab", "bc", "cd", "ef", "gh", "ij", "lm", "no"/)							
character(len = 2,kind = 4), parameter::b(2,4) = reshape(a, (/2,4/))
integer*4, parameter::d(4) = (/1_4, 2_4, 3_4, 4_4/)
integer*4, parameter::e = 1
character(len = 2,kind = 4)::f(2,4) = cshift(b,d,e)
character(len = 2,kind = 4)::g(2,4)
integer::i,j
integer::z(2)
integer::m(2) = shape(cshift(b,d,e))
integer::n = kind(cshift(b,d,e))
g = cshift(b,d,e)

z = shape(cshift(b,d,e))
do i =1,2
do j =1,4
print*, f(i,j), '--', g(i,j)
if(f(i,j).ne.g(i,j)) then
print*, '??? (Error: CH->CH) ???'
else
print*, 'CH -> CH'
endif
enddo
enddo


call check(m,z)
call check1(n, kind(cshift(b,d,e)))

end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
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
