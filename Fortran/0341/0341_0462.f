      program main
      parameter(n=10)
      real,volatile:: a(n,n),b(n,n),s

      interface
         subroutine sub1(a,b,s,nn)
         real,volatile:: a(nn,nn),b(nn,nn),s
         end subroutine sub1
         subroutine sub2(a,b,s,nn)
         real,volatile:: a(nn,nn),b(nn,nn),s
         end subroutine sub2
      end interface

      do j=1,n
         do i=1,n
            a(i,j)=i
            b(i,j)=i
         enddo
      enddo
      s=0
      call sub1(a,b,s,n)
      print *,a
      print *,b
      print *,s
      s=0
      call sub2(a,b,s,n)
      print *,a
      print *,b
      print *,s
      end

      subroutine sub1(a,b,s,n)
      real,volatile:: a(n,n),b(n,n),s
!$omp parallel do reduction(+:s)
      do j=1,n
         do i=1,n
            a(i,j)=i
         enddo
         do i=1,n
            s=s+b(i,j)
         enddo
      enddo
      end

      subroutine sub2(a,b,s,n)
      real,volatile:: a(n,n),b(n,n),s
!$omp parallel do reduction(+:s)
      do j=1,n
         do i=1,n
            s=s+b(i,j)
         enddo
         do i=1,n
            a(i,j)=i
         enddo
      enddo
      end
