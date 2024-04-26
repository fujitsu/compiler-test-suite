 program max
 integer*4,parameter::low=-100,upper=100
 integer*1 test1
 integer*2 test2
 integer*4 test3
 integer*8 test4
 real*4 test5
 real*8 test6
 real*16 test7
 print *, test1(low,upper)
 print *, test2(low,upper)
 print *, test3(low,upper)
 print *, test4(low,upper)
 print *, test5(low,upper)
 print *, test6(low,upper)
 print *, test7(low,upper)
 end
 integer*1 function test1(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 integer*1 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test1=sum(ans)
 end
 integer*2 function test2(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 integer*2 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test2=sum(ans)
 end
 integer*4 function test3(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 integer*4 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test3=sum(ans)
 end
 integer*8 function test4(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 integer*8 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test4=sum(ans)
 end
 real*4 function test5(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 real*4 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test5=sum(ans)
 end
 real*8 function test6(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 real*8 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test6=sum(ans)
 end
 real*16 function test7(low,upper)
 implicit none
 integer*4 i,j
 integer*4 low,upper
 real*16 t,r,ans(low:upper,low:upper)
 do i=low,upper
 do j=low,upper
 t = i
 r = j
 ans(i,j)=max(t,r)
 enddo
 enddo
 test7=sum(ans)
 end
