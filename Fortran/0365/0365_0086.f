      call sub(1,5,2)
      end
      
      subroutine sub(kk,nn,mm)
      integer a(5,5,5,5,5,5,5)

      do i1=kk,nn,mm
      do i2=1,5
      do i3=1,5
      do i4=1,5
      do i5=1,5
      do i6=1,5
      do i7=1,5
        a(i1,i2,i3,i4,i5,i6,i7)=i1+i2+i3+i4+i5+i6+i7
      end do
      end do
      end do
      end do
      end do
      end do
      end do

      do i1=kk,nn,mm
      do i2=1,5
      do i3=1,5
      do i4=1,5
      do i5=1,5
      do i6=1,5
      do i7=1,5
       if (a(i1,i2,i3,i4,i5,i6,i7).ne.(i1+i2+i3+i4+i5+i6+i7)) then
         stop 'ng'
       endif
      end do
      end do
      end do
      end do
      end do
      end do
      end do
      print *,'ok'
      end
