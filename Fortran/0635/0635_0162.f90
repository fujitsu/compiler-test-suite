       integer(kind=4) :: n,m
       data n/10/,m/10/

       call sub1(n, m)
       end

       subroutine sub1(n, m)

       real(kind=4),dimension(n) :: a1
       real(kind=4),dimension(n,m) :: b1

       do j=1,n
         do i=1,m
           a1(i) = j
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       return
       end
