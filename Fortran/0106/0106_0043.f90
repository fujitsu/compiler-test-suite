subroutine sub(xx)
  integer(4)::xx
  xx = 3
end subroutine sub
program main
integer(4)::a,x
integer(4)::j,k
integer(4)::v1,v2,xx
integer(4),dimension(1:5) :: xxx

a=1
j=0
v1=0
v2=0
x=0
call sub(xx)

do k=2,xx
   a=j
   if(x>=j) then
      do j=1,2_4
         v2=1
         if(x<j) then
            xxx(j) = 1
         end if
         v1=v2
      enddo
   end if
end do

print *,a,v1,xxx(1)
end program main
