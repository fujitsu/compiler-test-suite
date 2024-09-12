      integer a(10,10,10)/1000*0/
      integer b(11,11,11)/1331*0/

      call sub1(a,b,10,10)
      call sub2(a,b,10,10,1)
      call sub3(a,b,10,10,1)
      call sub4(a,b,10,10,1)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,b,ll,mm)
      integer a(ll,ll,ll),b(11,11,11)
      do k=1,mm
         do j=1,mm
            do i=1,mm
               a(i,j,k) = 1
            enddo
            do i=1,mm
               b(i,j,k) = 1
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 1) write(6,*) 'err 01'
      if (b(1,1,1) .ne. 1) write(6,*) 'err 01'
      end

      subroutine sub2(a,b,ll,nn,mm)
      integer a(ll,ll,ll),b(11,11,11)
      do k=1,mm
         do j=1,nn
            do i=1,nn
               a(i,j,k) = 2
            enddo
            do i=1,nn
               b(i,j,k) = 2
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 2) write(6,*) 'err 02'
      if (b(1,1,1) .ne. 2) write(6,*) 'err 02'
      end

      subroutine sub3(a,b,ll,nn,mm)
      integer a(ll,ll,ll),b(11,11,11)
      do k=1,nn
         do j=1,mm
            do i=1,nn
               a(i,j,k) = 3
            enddo
            do i=1,nn
               b(i,j,k) = 3
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 3) write(6,*) 'err 03'
      if (b(1,1,1) .ne. 3) write(6,*) 'err 03'
      end

      subroutine sub4(a,b,ll,nn,mm)
      integer a(ll,ll,ll),b(11,11,11)
      do k=1,nn
         do j=1,nn
            do i=1,mm
               a(i,j,k) = 4
            enddo
            do i=1,mm
               b(i,j,k) = 4
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 4) write(6,*) 'err 04'
      if (b(1,1,1) .ne. 4) write(6,*) 'err 04'
      end
