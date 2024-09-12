      real a(10,10,10)/1000*2/

      call sub1(a,10,10)
      call sub2(a,10,10,2)
      call sub3(a,10,10,2)
      call sub4(a,10,10,2)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,ll,mm)
      real a(ll,ll,ll),diff/0.0003/,res/2.90929747/
      do k=1,mm
         do j=1,mm
            do i=1,mm
               a(i,j,k) = sin(a(i,j,k)) + 2.0
            enddo
         enddo
      enddo
      if ((a(1,1,1) - res) .ge. diff ) write(6,*) 'err 01 ',a(1,1,1)
      end

      subroutine sub2(a,ll,mm,nn2)
      real a(ll,ll,ll),diff/0.0003/,res/2.90929747/
      do k=1,nn2
         do j=1,mm
            do i=1,mm
               a(i,j,k) = sin(a(i,j,k)) + 2.0
            enddo
         enddo
      enddo
      if ((a(1,1,1) - res) .ge. diff ) write(6,*) 'err 02 ',a(1,1,1)
      end

      subroutine sub3(a,ll,mm,nn2)
      real a(ll,ll,ll),diff/0.0003/,res/2.90929747/
      do k=1,mm
         do j=1,nn2
            do i=1,mm
               a(i,j,k) = sin(a(i,j,k)) + 2.0
            enddo
         enddo
      enddo
      if ((a(1,1,1) - res) .ge. diff ) write(6,*) 'err 03 ',a(1,1,1)
      end

      subroutine sub4(a,ll,mm,nn2)
      real a(ll,ll,ll),diff/0.0003/,res/2.90929747/
      do k=1,mm
         do j=1,mm
            do i=1,nn2
               a(i,j,k) = sin(a(i,j,k)) + 2.0
            enddo
         enddo
      enddo
      if ((a(1,1,1) - res) .ge. diff ) write(6,*) 'err 04 ',a(1,1,1)
      end

