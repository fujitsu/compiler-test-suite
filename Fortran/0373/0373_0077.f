       integer*4 a(20),b(20),c(20),i
       data a/20*-2/,c/20*-9/
       b = 0

       do i=1,20
         if (i>10) then
           b(i)=a(i)+i
         endif
         if (i<5) then
           b(i)=c(i)-i
         endif
       enddo

       write(6,*) b,c
       stop
       end
