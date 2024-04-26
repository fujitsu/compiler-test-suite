
       logical*4 a(10)/10*0/
       integer*4 b(10)/1,2,3,4,5,10,9,8,7,6/
       integer*4 c(10)/10*3/
       do i=1,10
          a(i) = b(i) .gt. c(i)
       enddo   
       write(6,*) a

       do i=1,10
          a(i) = b(i) .ge. c(i)
       enddo   
       write(6,*) a

       do i=1,10
          a(i) = b(i) .lt. c(i)
       enddo   
       write(6,*) a

       do i=1,10
          a(i) = b(i) .le. c(i)
       enddo   
       write(6,*) a

       do i=1,10
          a(i) = b(i) .eq. c(i)
       enddo   
       write(6,*) a

       do i=1,10
          a(i) = b(i) .ne. c(i)
       enddo   
       write(6,*) a

       end
