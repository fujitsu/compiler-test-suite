       integer(kind=4),dimension(1000,1000) :: a
       integer(kind=4),dimension(10000) :: b,c,d,e
       data e/10000*7/

       do i=1,10000
         b(i) = 1
         c(i) = 2
         d(i) = 3
       enddo

       do i=1,1000
         do j=1,1000
           a(i,J) = b(i) + c(i) * d(j)
         enddo
       enddo

       do i=1,100
         if (a(1,i).ne.e(i)) then
           print*, 'NG'
           goto 100
         endif
       enddo
       print*, 'OK'

 100   stop
       end


