      program main
      integer a(10,10),b(20,10)
      do i=1,10
         do j=1,10
            a(j,i)=j
         enddo
         do k=1,20
            b(k,i)=k
         enddo
      enddo
      print *,a,b
      end
