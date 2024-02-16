       real*8 a(100)/100*0.0/
       real*8 total/0.0/

       do i=1,50,1
          a(10+i) = i
       enddo

       do i=1,100,1
         total = total + a(i)
       enddo
       print*, total
       end
