implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)/10000*2./
integer*4 mask(100,100)/10000*0/

do concurrent(i=1:100,mask(i,1)==0)
  forall (j=1:100,mask(i,j)==0)
    a(i,j) = b(i,j) + 3.
  end forall
end do
print *,merge("OK","NG",all(a==5.0))
end
