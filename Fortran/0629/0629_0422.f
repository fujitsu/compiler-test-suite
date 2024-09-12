      program main
      call sub1
      call sub2
      call sub3
      end

      subroutine sub1
      integer a(10),b(10)
      data a/10*0/,b/10*0/
      do i=1,10 
         k=2
         do j=1,10
            a(j)=i/k
         enddo
         k=0
         do j=1,10
            b(j)=i
            k=k+b(j)
         enddo
      enddo
      print *,"*** test1 ***"
      print *,k
      print *,a
      print *,b
      end

      subroutine sub2
      integer a(10),b(10),c(10),d(10)
      data a/10*0/,b/10*0/
      m=5
      do i=1,10 
         k=2
         do j=1,10
            a(j)=i/k+m
         enddo
         k=0
         do j=1,10
            b(j)=i+m
            k=k+b(j)
         enddo
      enddo
      m=7
      do i=1,10 
         k=2
         do j=1,10
            c(j)=i/k+m
         enddo
         k=0
         do j=1,10
            d(j)=i+m
            k=k+d(j)
         enddo
      enddo
      print *,"*** test2 ***"
      print *,k
      print *,a
      print *,b
      print *,c
      print *,d
      end

      subroutine sub3
      integer a(10),b(10),c(10),d(10)
      data a/10*0/,b/10*0/
      k=5
      do i=1,10 
         k=10+k
         do j=1,10
            a(j)=i/k
         enddo
         k=20+k
         do j=1,10
            b(j)=i
            k=k+b(j)
         enddo
      enddo
      k=7
      do i=1,10 
         k=30+k
         do j=1,10
            c(j)=i/k
         enddo
         k=40+k
         do j=1,10
            d(j)=i
            k=k+d(j)
         enddo
      enddo
      print *,"*** test3 ***"
      print *,k
      print *,a
      print *,b
      print *,c
      print *,d
      end
