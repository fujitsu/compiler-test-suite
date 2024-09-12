      program main
      call sub1
      call sub2
      call sub3
      end

      subroutine sub1
      real a(10)/10*0.0/
      i=1
      do i=i,10
         a(i)=i
      enddo
      print *,a
      end

      subroutine sub2
      real a(10)/10*0.0/
      i=10
      do i=1,i
         a(i)=i
      enddo
      print *,a
      end

      subroutine sub3
      real a(10)/10*0.0/
      i=2
      do i=1,10,i
         a(i)=i
      enddo
      print *,a
      end
