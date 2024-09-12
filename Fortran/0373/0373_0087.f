       integer*4 a(20),b(20)/20*0/,i,c(20),g
       data a/20*-2/,c/20*-6/,g/5/
       
       do i=1,19
         a(i)=a(i)
         if (i>10) then
           b(i)=a(i)+i
         endif
       enddo

       write(6,*) b
       stop
       end
