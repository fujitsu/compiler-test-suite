       integer*4 a(20),b(20),i
       data a/20*-2/
       b = 0

       do i=1,20
         if (i>10) then
           b(i)=a(i)+i
         endif
         if (i<10) then
           b(i)=a(i)-i
         endif
       enddo

       write(6,*) b
       stop
       end
