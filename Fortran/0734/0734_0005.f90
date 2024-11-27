real ::resid=0,b(200)=0
data i/2/
if (i==2)call x
b(i) = -b(i)
do i = 1,n
   resid = amax1( resid, abs(b(i)) )
enddo
end
subroutine x
print *,'pass'
stop
end
