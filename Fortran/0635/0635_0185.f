      integer a(10,10,10)/1000*1/

      call sub1(a,10,2)
      call sub2(a,10,10,2)
      call sub3(a,10,10,2)
      call sub4(a,10,10,2)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,ll,mm2)
      integer a(ll,ll,ll)
      isum = 0
      do k=1,mm2
         do j=1,mm2
            do i=1,10
               isum = isum + a(i,j,k)
            enddo
         enddo
      enddo
      if (isum .ne. 40) write(6,*) 'err 01',isum
      end

      subroutine sub2(a,ll,nn10,mm2)
      integer a(ll,ll,ll)
      isum = 0
      do k=1,mm2
         do j=1,10
            do i=1,nn10
               isum = isum + a(i,j,k)
            enddo
         enddo
      enddo
      if (isum .ne. 200) write(6,*) 'err 02',isum
      end

      subroutine sub3(a,ll,nn10,mm2)
      integer a(ll,ll,ll)
      isum = 0
      do k=1,nn10
         do j=1,mm2
            do i=1,10
               isum = isum + a(i,j,k)
            enddo
         enddo
      enddo
      if (isum .ne. 200) write(6,*) 'err 03',isum
      end

      subroutine sub4(a,ll,nn10,mm2)
      integer a(ll,ll,ll)
      isum = 0
      do k=1,nn10
         do j=1,10
            do i=1,mm2
               isum = isum + a(i,j,k)
            enddo
         enddo
      enddo
      if (isum .ne. 200) write(6,*) 'err 04',isum
      end
