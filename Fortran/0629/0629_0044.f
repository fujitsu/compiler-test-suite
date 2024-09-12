       integer*4 a(10,10),b(10,10),i
       data a/100*1/,b/100*2/
       do j=1,10
          do i=1,10
            a(i,j)=b(i,j)
          enddo
       enddo
       write(6,*) a
       end
