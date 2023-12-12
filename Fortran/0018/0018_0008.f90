
Program Main

character,dimension(2,3)::a
character,parameter, dimension (2,3) :: b = reshape((/'a','b','c','d','e','f'/), (/2,3/))

integer,dimension(3)::d
integer,parameter,dimension(3) :: c = minloc(b,dim =1,kind=8)

integer,parameter::p = kind(minloc(b,dim =1,kind=8))

a = reshape((/'a','b','c','d','e','f'/), (/2,3/))


d = minloc(a,dim =1,kind=8) 

do i = 1,3


if (c(i).ne.d(i)) then

print*, '??? (Error: ) ???'

else



endif

enddo


call check(p, kind(minloc(a,dim =1,kind=8)))
print *,'OK'

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
