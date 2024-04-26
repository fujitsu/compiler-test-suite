      program main
      call sub4
      write(6,*) ' ok '
      stop
      end
      subroutine sub4
      implicit real*8(a-h,o-z)
      common /ssu/a(513),b1(513)
      do 1 i=1,10
        b1(i)=cos(a(i))
 1    continue
      return
      end
