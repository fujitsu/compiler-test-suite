
       integer*8 a(10)/1,2,3,4,5,10,9,8,7,6/
       integer*8 b(10)/1,2,3,4,5,10,9,8,7,6/
       integer*8 nn(1)/0/,m/0/
       do i=1,10
          m = m + a(i) * b(i)
       enddo   
       write(6,*) m

       do i=1,10
          nn(1) = nn(1) + a(i) * b(i)
       enddo   
       write(6,*) nn

       end
