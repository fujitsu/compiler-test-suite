       real*16 a(100),b(100),c(100)
       integer*4 i
       data a/100*1.0/,b/100*10.0/

       do i=1,100
        c(i)=sign(a(i),b(i))
       enddo
       write(6,*) c
       end
