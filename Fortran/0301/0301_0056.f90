real(8),parameter :: ANSWER=10000.0
real(8) :: result
real*8  a(20,10,10),b(20,10,10),c(20,10,10)
n=10
n2=20
a=2
b=3
c=0
do k=1,10
   do j=1,10
      do i=1,20
         c(i,j,k)=a(i,k,j)+b(i,j,k)
      enddo
   enddo
enddo

result = sum(c)
if( result .eq. ANSWER ) then
   print *,"ok"
else
   print *,"ng",result,ANSWER
endif

end
