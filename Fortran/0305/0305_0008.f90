       subroutine sub(a,b,n,n1,n2)
         real * 8 a(n,n,n,n),b(n,n,n,n)
         do l=1,n2
!$omp parallel do
            do k=1,n2
               do j=1,n2
                  do i=1,n1
                     b(j,k,i,l) = a(j,k,i,l)+b(j,k,l,l)
                  enddo
               enddo
            enddo
         enddo
         return
       end

       program main
         integer,parameter :: n=10
         real(8),parameter :: ans=2450.000036507845
         real(8),parameter :: error=  0.00001
         real * 8 a(n,n,n,n),b(n,n,n,n)
         a = 0.1
         b = 0.1
         call sub(a,b,n,n,n)
         if (abs(sum(b) - ans) .gt. error) then
           print *,"ok"
         else
           print *,"ng", sum(b), ans
         endif 
       end program main
