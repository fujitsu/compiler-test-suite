Program Main

character,dimension(2,3,2,1,1)::a

character,parameter, dimension (2,3,2,1,1) :: b = reshape((/'a','b','c','d','e',& 
                                      'f','g','h','i','j','k','l' /), (/2,3,2,1,1/))

character,parameter,dimension(2,3,1,1) :: c = maxval(b,dim = 3, mask = b> 'd')

character,dimension(2,3,1,1) :: d

integer,parameter::p = kind(maxval(b,dim =3, mask = b> 'd'))

a = reshape((/'a','b','c','d','e','f','g','h','i','j','k','l'/), (/2,3,2,1,1/))

d =  maxval(a,dim =3, mask = a>'d' )

do i = 1,2
do j = 1,3
do k = 1,1
do l = 1,1


print*, c(i,j,k,l), '---', d(i,j,k,l)

if (c(i,j,k,l).ne.d(i,j,k,l)) then

print*, '??? (Error:) ???'

else

print*, 'PASS'


endif


end do

end do

end do

end do



call check(p, kind(maxval(a,dim = 3, mask = a> 'd')))

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
