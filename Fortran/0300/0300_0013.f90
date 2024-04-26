program sign
integer*4,parameter::low=-100,upper=100
integer*8 test4
print *, test4(low,upper)
end program sign

integer*8 function test4(low,upper)
implicit none
integer*4 i,j
integer*4 low,upper
integer*8 t,r,ans(low:upper,low:upper)
do i=low,upper
   do j=low,upper
      t = i
      r = j
      ans(i,j)=sign(t,r)
   enddo
enddo
test4=sum(ans)
end
             
