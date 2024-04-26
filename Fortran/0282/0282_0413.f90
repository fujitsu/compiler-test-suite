Program Main

integer,dimension(2,3,2,1)::a

integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

integer,dimension(1) :: d

integer,parameter,dimension(1) :: c = product(b, mask = b> -30)

integer,parameter::p = kind(product(b,mask = b> -30))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))

d =  product(a,mask = a> -30)

do i = 1,1

print*, c(i), '---', d(i)

if (c(i) .ne. d(i)) then

print*, '??? (Error: I->I) ???'

else

print*, 'I -> I'


endif

end do

call check(p, kind(product(a,mask = a> -30)))

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
