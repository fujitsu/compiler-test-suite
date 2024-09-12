       integer*8 a(10),c(10),b(10)
       integer*4 i
       data a/10*1/,b/10*5/

       do i=1,10
        c(i)=transfer(a(i),b(i))
       enddo
       write(6,*) c
       end
