      program main
      integer   ia(10),i4
      real      ra(10),r4
      complex*8 ca(10),c8
      call sub1(ia,i4)
      call sub2(ra,r4)
      call sub3(ca,c8)
      print *,i4,ia
      print *,r4,ra
      print *,c8,ca
      end

      subroutine sub1(ia,i4)
      integer   i4,ia(10)
      i4 = 4
      do i=1,10
         ia(i)=i4
      enddo
      do i=1,5
         ia(i)=i
         i4=ia(i)
      enddo
      end

      subroutine sub2(ra,r4)
      real      ra(10),r4
      r4 = 4.0
      do i=1,10
         ra(i)=r4
      enddo
      do i=1,5
         ra(i)=i
         r4=ra(i)
      enddo
      end

      subroutine sub3(ca,c8)
      complex*8 ca(10),c8
      c8 = (8.0,8.0)
      do i=1,10
         ca(i)=c8
      enddo
      do i=1,5
         ca(i)=i
         c8=ca(i)
      enddo
      end
