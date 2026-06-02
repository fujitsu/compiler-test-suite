
      module mod
      type iptr
      integer :: ix
      integer :: iy
      end type iptr
      type rptr
      real    :: rx
      real    :: ry
      end type rptr
      type(iptr), target :: ixy
      type(rptr), target :: rxy
      integer, pointer:: tixy
      real, pointer:: trxy
      end module mod

      program main
      use mod

      real sum
      common  /com/sum
      type(iptr) :: pit1
      pointer(iti1,pit1)
      type(iptr) :: pit2
      pointer(iti2,pit2)
      type(rptr) :: pir1
      pointer(bsh1,pir1)
      type(rptr) :: pir2
      pointer(bsh2,pir2)
      iti1=loc(ixy%ix)
      iti2=loc(ixy%iy)
      bsh1=loc(rxy%rx)
      bsh2=loc(rxy%ry)

      tixy=>ixy%iy
      trxy=>rxy%ry

      ixy%ix = 1
      ixy%iy = 1
      rxy%rx = 2.0
      rxy%ry = 2.0

      tixy = 3
      trxy = 3.0
      if (.not.((ixy%iy .eq. 3).and.(rxy%ry .eq. 3.0))) then
         print *,'NG'
      else
         print *,'OK'
      endif

      i = 0
      do 100 while (i<10)
         pit1%iy = pit1%iy + pit2%ix - int(pir2%rx)
         pir1%ry = pir1%ry + pir2%rx - real(pit2%ix)
         i = i + 1
 100  end do

      if ((tixy.eq.3).and.(trxy.eq.3.0)) then
         print *,'OK'
      else
         print *,'NG'
      endif

      call sub(pit2%ix, pir2%rx)
      trxy = sum
      tixy = real(trxy)

      if (tixy.eq.77) then
         print *,'OK'
      else
         print *,'NG'
      endif      
      end program main

      recursive subroutine sub(pit2, pir2)
      integer pit2
      real    pir2
      real sum
      common /com/sum
      real data1, data2, add
      parameter (data1=70,data2=7.7,add=77.7)

      pit2 = data1
      pir2 = data2

      sum = real(pit2) + pir2

      if (sum.eq.add) then
         return
      endif

      call sub(pit2,pir2)

      end subroutine sub
