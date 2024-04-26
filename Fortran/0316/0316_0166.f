
      type tag
        integer i(3:10)
      end type
      integer*4,parameter ::i4(2,-10:10)=1
      type(tag),parameter ::t(2+3:5+5)=tag(1)
      real*8,   parameter ::r8(10:-10)=1.0d+0
      
      integer*4,parameter ::ia(2)=shape(source=i4)
      integer*4,parameter ::ib(2)=shape(i4(1:2,0:-9:3))
      integer*4,parameter ::ic(1)=shape(t)
      integer*4,parameter ::id(1)=shape(t(5)%i)
      integer*4,parameter ::ie(1)=shape(r8)
      integer*4,parameter ::if = lbound(shape(1),1)
      integer*4,parameter ::ig = ubound(shape(1),1)

      call check(ia,shape(source=i4), 2)
      call check(ib,shape(i4(1:2,0:-9:3)), 2)
      call check(ic,shape(t), 1)
      call check(id,shape(t(5)%i), 1)
      call check(ie,shape(r8), 1)
      call check2(if, lbound(shape(1),1))
      call check2(ig, ubound(shape(1),1))
      print *,'*** ok ***'
      end

      subroutine check(i,it,n)
      integer*4 i(n),it(n)
      do j=1,n
        if (i(j).ne.it(j)) then
          print *,'??? ng ???'
          stop 1
       endif
      enddo
      end

      subroutine check2(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 2
      endif
      end
