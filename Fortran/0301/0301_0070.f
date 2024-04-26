       real*8 sum/0.0/
       real*8 a(10)/0,1,2,3,4,5,6,7,8,9/

       do i=1,10
         if (a(i).gt.0) then
           sum = sum + a(i)
         endif
       enddo
       print*, sum
       end
