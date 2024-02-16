       real*8 a(100)/100*0.0/
       real*8 total/0.0/

       do i=50,1,-1
          a(80-i) = i
       enddo

       do i=1,100,1
         total = total + a(i) 
       enddo
       print*, total
       end
