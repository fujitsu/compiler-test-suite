Program Main

character,dimension(2,3,2,1,1)::a

character,parameter, dimension (2,3,2,1,1) :: b = reshape((/'a','b','c','d','e',& 
                                       'f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

integer,parameter,dimension(5) :: c = minloc(b)

integer,dimension(5) :: d

integer,parameter::p = kind(minloc(b))

a = reshape((/'a','b','c','d','e','f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

d = minloc(a)


do i = 1,5

print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error:) ???'

else

print*, 'pass'


endif


end do


call check(p, kind(minloc(a)))

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
