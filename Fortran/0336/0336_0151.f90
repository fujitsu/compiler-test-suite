
subroutine foo(d,k1,k2,m)
integer d,i,j,k1,k2,m,h,u
logical t
i=k1
j=k2
call foo2(i,j)
u=m
h=d
t = (u > 0)
if (h == 0) then
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
call sub(i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     i,i,i,i,i,i,i,i,i,i)
call sub(j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i, &
     j,j,j,j,j,j,j,j,j,j, &
     i,i,i,i,i,i,i,i,i,i)
endif
print *,t
end subroutine

subroutine sub(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9, &
               i10,i11,i12,i13,i14,i15,i16,i17,i18,i19, &
               i20,i21,i22,i23,i24,i25,i26,i27,i28,i29, &
               i30,i31,i32,i33,i34,i35,i36,i37,i38,i39, &
               i40,i41,i42,i43,i44,i45,i46,i47,i48,i49, &
               i50,i51,i52,i53,i54,i55,i56,i57,i58,i59)
if (i0 /= 0) then
  print *,i0+i1+i2+i3+i4+i5+i6+i7+i8+i9 &
       +i10+i11+i12+i13+i14+i15+i16+i17+i18+i19 &
       +i20+i21+i22+i23+i24+i25+i26+i27+i28+i29 &
       +i30+i31+i32+i33+i34+i35+i36+i37+i38+i39 &
       +i40+i41+i42+i43+i44+i45+i46+i47+i48+i49 &
       +i50+i51+i52+i53+i54+i55+i56+i57+i58+i59
endif
end subroutine

subroutine foo2(i,j)
if (i /= 0 .and. j /= 0) then
  print *,i,j
endif
end subroutine

program main
call foo(0,0,0,1)
end program
