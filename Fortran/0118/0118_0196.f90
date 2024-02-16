subroutine sub(a,b,mask)
implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)
integer*4 mask(100,100)

do concurrent(i=1:100,j=1:100,mask(i,j)==0)
  a(i,j) = b(i,j) + 3.
end do

do concurrent(j=1:100,i=1:100,mask(i,j)==0)
  a(i,j) = a(i,j) + 1.
end do

end

real*8 a(100,100)
real*8 b(100,100)/10000*2./
integer*4 mask(100,100)/10000*0/
call sub(a,b,mask)
print *,merge("OK","NG",all(a==6.0))
end
