Program Main

character,dimension(2,3,2,1,1)::a

character,parameter, dimension (2,3,2,1,1) :: b = reshape((/'a','b','c','d','e',& 
                                       'f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

integer,parameter,dimension(5) :: c = minloc(b,kind=8)

integer,dimension(5) :: d

integer,parameter::p = kind(minloc(b,kind=8))

a = reshape((/'a','b','c','d','e','f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

d = minloc(a,kind=8)


do i = 1,5


if (c(i).ne.d(i)) then


else



endif


end do


call check(p, kind(minloc(a,kind=8)))
print *,'OK'

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
