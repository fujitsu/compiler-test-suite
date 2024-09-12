      program main
      integer a(10,10),b(20,10)
      m=0
      do i=1,10
         do j=1,10
            a(j,i)=j
            m=m+1
         enddo
         do k=1,20
            b(k,i)=k
            m=m+1
         enddo
      enddo
      print *,a,b,m
      end
