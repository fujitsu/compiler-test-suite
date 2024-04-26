      program main
      parameter(ni=10,nj=11,nk=12)
      real a(ni,nj,nk),b(ni,nj,nk)
      a = 0
      b = 0
      call sub1(a,b,ni,nj,nk)
      call sub2(a,b,ni,nj,nk)
      call sub3(a,b,ni,nj,nk)
      print *,sum(a)
      print *,sum(b)
      end

      subroutine sub1(a,b,ni,nj,nk)
      real a(ni,nj,nk),b(ni,nj,nk)
      do k=1,nk
         do j=1,nj
            do i=1,ni
               a(i,j,k) = 1
            enddo
         enddo
      enddo

      do k=1,nk
         do j=1,nj
            do i=1,ni
               b(i,j,k) = 1
            enddo
         enddo
      enddo
      end

      subroutine sub2(a,b,ni,nj,nk)
      real a(ni,nj,nk),b(ni,nj,nk)
      do k=1,nk
         do j=1,nj
            do i=1,ni
               a(i,j,k) = 1
            enddo
         enddo
      enddo

      do k=1,nk
         do j=1,nj
            do i=1,ni
               b(i,j,k) = 1
            enddo
         enddo
      enddo
      end

      subroutine sub3(a,b,ni,nj,nk)
      real a(ni,nj,nk),b(ni,nj,nk)
      do k=1,nk
         do j=1,nj
            do i=1,ni
               a(i,j,k) = 1
            enddo
         enddo
      enddo

      do k=1,nk
         do j=1,nj
            do i=1,ni
               b(i,j,k) = 1
            enddo
         enddo
      enddo
      end
