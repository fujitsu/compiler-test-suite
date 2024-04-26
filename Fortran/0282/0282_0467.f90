Program Main

complex,dimension(2,3,1,1,1)::a

complex,parameter, dimension (2,3,1,1,1) :: b = reshape((/(0.0,-30.0),(-100.0,-50.0),(4.0,5.0),(8.0,-11.0), &
                                   (6.0,-3.0),(2.0,-400.0)/), (/2,3,1,1,1/))

complex,dimension(1) :: d
complex,parameter,dimension(1) :: c = sum(b)

integer,parameter::p = kind(sum(b))

a = reshape((/(0.0,-30.0),(-100.0,-50.0),(4.0,5.0),(8.0,-11.0),(6.0,-3.0),(2.0,-400.0)/), (/2,3,1,1,1/))

d =  sum(a)

do I = 1,1

print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: C->C) ???'

else

print*, 'C -> C'


endif


end do


call check(p, kind(sum(a)))

end


subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
