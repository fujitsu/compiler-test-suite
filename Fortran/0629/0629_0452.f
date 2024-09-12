      program main
      integer a(10,10)
      integer*4 i
      integer*2 i2
      call sub(a,i,i2)
      print *,a
      print *,i,i2
      end

      subroutine sub(a,i,i2)
      integer a(10,10)
      integer*4 i
      integer*2 i2
      do 10 i=1,10
         do 10 i2=1,10
            a(i,i2) = 1.0
  10  continue
      print *,a
      end
