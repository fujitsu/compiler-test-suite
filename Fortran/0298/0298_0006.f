       integer a(100,100)
       N = 100
       a = 0
         do i=1,N
         do j=1,N
           a(i,j)=a(i,j) + 3
         end do
         end do
         write(6,*) a(1,1)
       end
