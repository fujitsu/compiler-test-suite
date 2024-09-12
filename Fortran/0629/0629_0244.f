       real*4 c(20)
       data c/20*3.0/

       do i=2,20
         c(1) = c(1) * 2
       enddo
       print*, c(1)
       end
