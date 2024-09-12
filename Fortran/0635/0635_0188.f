      integer a(10,10,10)/1000*0/

      call sub1(a,10,10)
      call sub2(a,10,10,10)
      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,ll,mm)
      integer a(ll,ll,ll)
      do k=1,mm
         do j=1,mm
            do i=1,mm
               if (i.gt.j) then
                  a(i,j,k) = 1
               else
                  a(i,j,k) = 2
               endif
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 2) write(6,*) 'err 01 ',a(1,1,1)
      end

      subroutine sub2(a,ll,nn,mm)
      integer a(ll,ll,ll)
      do k=1,mm
         do j=1,nn
            do i=1,nn
               if (i.gt.j) then
                  a(i,j,k) = 1
               else if (i.gt.k) then
                  a(i,j,k) = 2
               else if (j.gt.k) then
                  a(i,j,k) = 3
               endif
            enddo
         enddo
      enddo
      if (a(1,1,1) .ne. 2) write(6,*) 'err 02 ',a(1,1,1)
      end
