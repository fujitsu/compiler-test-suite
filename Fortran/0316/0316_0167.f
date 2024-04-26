
      type tag
        integer i(3:10)
      end type
      integer*4 ::i4(2,-10:10)
      type(tag) ::t(2+3:5+5)
      real*8    ::r8(10:-10)
      integer   :: j
      
      integer*4,parameter ::ia(2)=shape(source=i4)
      integer*4,parameter ::ib(1)=shape(t)
      integer*4,parameter ::ic(1)=shape(r8)
      integer*4,parameter ::id = lbound(shape(j),1)
      integer*4,parameter ::ie = ubound(shape(j),1)

      call check(ia,shape(source=i4), 2)
      call check(ib,shape(t), 1)
      call check(ic,shape(r8), 1)
      call check2(id, lbound(shape(1),1))
      call check2(ie, ubound(shape(1),1))
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
