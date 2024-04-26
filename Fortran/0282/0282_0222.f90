
Program Main

character,dimension(2,3)::a
character,parameter, dimension (2,3) :: b = reshape((/'a','b','c','d','e','f'/), (/2,3/))

integer,dimension(3)::d
integer,parameter,dimension(3) :: c = maxloc(b,dim =1)

integer,parameter::p = kind(maxloc(b,dim =1))

a = reshape((/'a','b','c','d','e','f'/), (/2,3/))

d = maxloc(a,dim =1) 

do i = 1,3

print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: C -> C) ???'

else

print*, 'C -> C'


endif

enddo



call check(p, kind(maxloc(a,dim =1)))

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
