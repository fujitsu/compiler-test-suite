       real*16 a(100),c(100)/100*0/
       integer*4 i,m
       data a/100*1.0/

       m=1000+a(80)
       do i=1,100,5
        c(i)=m+a(i)
       enddo
       write(6,*) c
       end
