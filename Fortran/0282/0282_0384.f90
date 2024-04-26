
Program Main

Complex,dimension(2,3)::a
complex,parameter, dimension (2,3) :: b = reshape((/(0,-30),(-100,-50),(4,5),(8,-11), &
                                   (6,-3),(2,-400)/), (/2,3/))

complex,dimension(3)::d
complex,parameter,dimension(3) :: c = product(b,dim =1)

integer,parameter::p = kind(product(b,dim =1))

a = reshape((/(0,-30),(-100,-50),(4,5),(8,-11),(6,-3),(2,-400)/), (/2,3/))
d = product(a, dim =1)


do i = 1,3


print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: C -> C) ???'

else

print*, 'C -> C'


endif

enddo





call check(p, kind(product(a,dim =1)))

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
