       real*16 a(100),c(100)/100*0/
       real*8 b(100)
       integer*4 i
       data a/100*1.0/,b/100*3.0/
       
       do i=1,100,5
        c(i)=b(10)+a(i)
       enddo
       write(6,*) c
       end
