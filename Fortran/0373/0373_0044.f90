       real*16 a(100),c(100)/100*0/
       integer*4 i
       data a/100*1.0/

       do i=1,100,5
        c(i)=a(i)+1000
       enddo
       write(6,*) c
       end
