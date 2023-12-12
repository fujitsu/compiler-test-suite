Program Main

integer,dimension(2,3,2,1)::a

integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

integer,parameter,dimension(4) :: c = minloc(b, mask = b> -30,kind=8)

integer,dimension(4) :: d

integer,parameter::p = kind(minloc(b,mask = b> -30,kind=8))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))

d =  minloc(a,mask = a> -30,kind=8)

do i = 1,4


if (c(i).ne.d(i)) then

print*, '??? (Error: I->I) ???'

else
endif

enddo


call check(p, kind(minloc(a,mask = a> -30,kind=8)))
print *,'OK'

end


subroutine check(x, y)
integer x, y
if (x.ne.y) then
else
endif
end subroutine
