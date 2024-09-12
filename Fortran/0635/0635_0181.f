      integer a(10,10)/100*0/
      integer b(10,10)/100*0/
      integer c(10,10)/100*0/

      call sub1(a,b,c,10,10)
      call sub2(a,b,c,10,10)
      call sub3(a,b,c,10,10)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,b,c,ll,mm)
      integer a(ll,ll), b(ll,ll), c(ll,ll)
      do j=1,mm
         do i=1,mm
            a(i,j) = 1
         enddo
         do i=1,mm
            b(i,j) = 1
         enddo
         do i=1,mm
            c(i,j) = 1
         enddo
      enddo

      if (a(1,1) .ne. 1) write(6,*) 'err 01'
      if (b(1,1) .ne. 1) write(6,*) 'err 01'
      if (c(1,1) .ne. 1) write(6,*) 'err 01'
      end

      subroutine sub2(a,b,c,ll,mm)
      integer a(ll,ll), b(ll,ll), c(ll,ll)
      do j=1,mm
         do i=1,mm
            a(i,j) = 1
         enddo
         do i=1,mm
            b(i,j) = 1
         enddo
         do i=1,mm
            c(i,j) = 1
         enddo
      enddo

      if (a(1,1) .ne. 1) write(6,*) 'err 01'
      if (b(1,1) .ne. 1) write(6,*) 'err 01'
      if (c(1,1) .ne. 1) write(6,*) 'err 01'
      end

      subroutine sub3(a,b,c,ll,mm)
      integer a(ll,ll), b(ll,ll), c(ll,ll)
      do j=1,mm
         do i=1,mm
            a(i,j) = 1
         enddo
         do i=1,mm
            b(i,j) = 1
         enddo
         do i=1,mm
            c(i,j) = 1
         enddo
      enddo

      if (a(1,1) .ne. 1) write(6,*) 'err 01'
      if (b(1,1) .ne. 1) write(6,*) 'err 01'
      if (c(1,1) .ne. 1) write(6,*) 'err 01'
      end
