      implicit real*4 (a-h,o-z)
      dimension vxyz(5)
      dimension ckpnt(3)

      call initvc(ckpnt,3)
      call initvc(vxyz,5)
      print *,'pass'
      end
      subroutine initvc(x,n)
      implicit real*4 (a-h,o-z)
      dimension x(*)
      do 1 i = 1, n
         x(i) = 1.d0
 1    continue
      end
