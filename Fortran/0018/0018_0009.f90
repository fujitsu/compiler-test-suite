Program Main

character(len =1),dimension(2,3,2,1,1)::a

character(len =1),parameter, dimension (2,3,2,1,1) :: b = reshape((/'a','b','c','d','e',& 
                                      'f','g','h','i','j','k','l' /), (/2,3,2,1,1/))

integer,parameter,dimension(2,3,1,1) :: c = minloc(b,dim = 3, mask = b> 'd',kind=8)

integer,dimension(2,3,1,1) :: d

integer,parameter::p = kind(minloc(b,dim =3, mask = b> 'd',kind=8))

a = reshape((/'a','b','c','d','e','f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

d =  minloc(a,dim =3, mask = a> 'd',kind=8)


do i = 1,2
do j = 1,3
do k = 1,1
do l = 1,1



if (c(i,j,k,l).ne.d(i,j,k,l)) then

print*, '??? (Error:) ???'

else



endif


end do

end do

end do

end do


print *,'OK'


call check(p, kind(minloc(a,dim = 3, mask = a> 'd',kind=8)))

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
