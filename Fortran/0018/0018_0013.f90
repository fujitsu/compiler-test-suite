Program Main

integer,dimension(2,3,2,1,1,1,1)::a

integer,parameter, dimension (2,3,2,1,1,1,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1,1,1,1/))

integer,parameter,dimension(3,2,1,1,1,1) :: c = minloc(b,dim =1, mask = b> -30,kind=8)

integer,dimension(3,2,1,1,1,1) :: d

integer,parameter::p = kind(minloc(b,dim =1, mask = b> -30,kind=8))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1,1,1,1/))

d =  minloc(a,dim =1, mask = a> -30,kind=8)

do i = 1,3
do j = 1,2
do k = 1,1
do l = 1,1
do m = 1,1
do n = 1,1


if (c(i,j,k,l,m,n).ne.d(i,j,k,l,m,n)) then

print*, '??? (Error: I->I) ???'

else



endif

end do

end do

end do

end do

end do

end do


call check(p, kind(minloc(a,dim =1, mask = a> -30,kind=8)))
print *,'OK'

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
