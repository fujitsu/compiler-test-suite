Program Main

character,dimension(2,3,2,1,1)::a

character,parameter, dimension (2,3,2,1,1) :: b = reshape((/'a','b','c','d','e',& 
                                       'f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

character,parameter,dimension(1) :: c = maxval(b)

character,dimension(1) :: d

integer::p = kind(maxval(b))

a = reshape((/'a','b','c','d','e','f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

d =  maxval(a)

do i =1,1

print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: C->C) ???'

else

print*, 'C -> C'


endif

end do

call check(p, kind(maxval(a)))

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
