
      type tag
        integer i(3:10)
      end type
      integer*4,parameter ::i4(2,-10:10)=1
      type(tag),parameter ::t(5:10)=tag(1)
      real*8,   parameter ::r8(10:-10,10:-10,10:-10)=1.0d+0
      
      integer*4,parameter ::ia(2)=lbound(array=i4)
      integer*4,parameter ::ib(2)=lbound(array=i4(1:2,0:-9:3))
      integer*4,parameter ::ic(1)=lbound(t)
      integer*4,parameter ::id(1)=lbound(t(5)%i)
      integer*4,parameter ::ie(3)=lbound(r8)

      call check(ia,lbound(array=i4), 2)
      call check(ib,lbound(array=i4(1:2,0:-9:3)), 2)
      call check(ic,lbound(t), 1)
      call check(id,lbound(t(5)%i), 1)
      call check(ie,lbound(r8), 3)
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
