Program Main

integer,dimension(2,3,2,1)::a

integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

integer,parameter,dimension(4) :: c = maxloc(b, mask = b> -30)

integer,dimension(4) :: d

integer,parameter::p = kind(maxloc(b,mask = b> -30))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))

d =  maxloc(a,mask = a> -30)

do i = 1,4

print*, c(i), '---', d(i)

if (c(i).ne.d(i)) then

print*, '??? (Error: I->I) ???'

else

print*, 'I -> I'


endif


enddo



call check(p, kind(maxloc(a,mask = a> -30)))

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
