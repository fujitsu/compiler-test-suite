       real*16 a(10),c(10)/10*0/,b(10)
       integer*4 i
       data a/10*1.0/,b/10*0.5/

       do i=1,10
        if (a(i)>5) then
          c(i)=a(i)+b(5)
        endif
       enddo
       write(6,*) c
       end
