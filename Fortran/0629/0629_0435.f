      program main
      integer a(10),b(10)
      i=1
      do 100 while(i.le.10)
         do j=1,10
            a(j) = j
         enddo
         do k=1,10
            b(k) = k
         enddo
         i=i+1
 100  continue

      print *,a(10),b(10),i,j,k
      end
