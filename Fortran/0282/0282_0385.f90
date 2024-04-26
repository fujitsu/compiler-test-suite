Program Main

complex,dimension(2,3,1,1,1)::a

complex,parameter, dimension (2,3,1,1,1) :: b = reshape((/(0.0,-30.0),(-100.0,-50.0),(4.0,5.0),(8.0,-11.0), &
                                   (6.0,-3.0),(2.0,-400.0)/), (/2,3,1,1,1/))

complex,dimension(2,3,1,1) :: d

complex, parameter::maskvalue = ((0.0 ,-30.0))
complex,parameter,dimension(2,3,1,1) :: c = product(b,dim = 3, mask = b== maskvalue)

integer,parameter::p = kind(product(b,dim =3, mask = b == maskvalue))

a = reshape((/(0.0,-30.0),(-100.0,-50.0),(4.0,5.0),(8.0,-11.0),(6.0,-3.0),(2.0,-400.0)/), (/2,3,1,1,1/))

d =  product(a,dim =3, mask = a ==  maskvalue)

do i = 1,2
do j = 1,3
do k = 1,1
do l = 1,1


print*, c(i,j,k,l), '---', d(i,j,k,l)

if (c(i,j,k,l).ne.d(i,j,k,l)) then

print*, '??? (Error:) ???'

else

print*, 'pass'


endif


end do

end do

end do

end do


call check(p, kind(product(a,dim = 3, mask = a == maskvalue)))

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
