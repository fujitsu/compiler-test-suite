integer j
j=0
call sub(j)
call sub(j)
call sub(j)
end

subroutine sub(j)
integer j
integer k
data k/0/
real*8 x(10),y(10)
save x

x=1
y=5

if(j.eq.k) then
  do i=1,10
    x(i) = i
    y(i) = 0
  enddo
end if

do i=1,9
  y(i) = x(i) 
enddo

write(6,*) "x(after)=",x
write(6,*) "y(after)=",y

do i=1,10
  x(i) = y(i) * i
enddo

k=k+1
end subroutine
