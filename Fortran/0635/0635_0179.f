      integer a(10,10,10)/1000*0/

      call sub1(a,10,10)
      call sub2(a,10,10,1)
      call sub3(a,10,10,1)
      call sub4(a,10,10,1)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,ll,mm)
      integer a(ll,ll,ll)
      do k=1,mm
         do j=1,mm
            do i=1,mm
               a(i,j,k) = 1
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 1) write(6,*) 'err 01'
      end

      subroutine sub2(a,ll,nn,mm)
      integer a(ll,ll,ll)
      do k=1,mm
         do j=1,nn
            do i=1,nn
               a(i,j,k) = 2
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 2) write(6,*) 'err 02'
      end

      subroutine sub3(a,ll,nn,mm)
      integer a(ll,ll,ll)
      do k=1,nn
         do j=1,mm
            do i=1,nn
               a(i,j,k) = 3
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 3) write(6,*) 'err 03'
      end

      subroutine sub4(a,ll,nn,mm)
      integer a(ll,ll,ll)
      do k=1,nn
         do j=1,nn
            do i=1,mm
               a(i,j,k) = 4
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 4) write(6,*) 'err 04'
      end
