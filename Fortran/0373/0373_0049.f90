       real*16 a(10),b(10)
       integer*8 c(10),d(10)
       integer*4 i
       data a/10*1.0/,c/10*10/

       do i=1,10
        b(i)=c(i)
        d(i)=a(i)
       enddo
       write(6,*) b,d
       end
