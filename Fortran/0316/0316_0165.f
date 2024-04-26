
      type tag
        integer i(3:10)
      end type
      integer*4,parameter ::i4(2,-10:10)=1
      type(tag),parameter ::t(5:10)=tag(1)
      real*8,   parameter ::r8(10:-10,10:-10,10:-10)=1.0d+0
      
      integer*4,parameter ::ia(2)=ubound(array=i4)
      integer*4,parameter ::ib(2)=ubound(array=i4(1:2,0:-9:3))
      integer*4,parameter ::ic(1)=ubound(t)
      integer*4,parameter ::id(1)=ubound(t(5)%i)
      integer*4,parameter ::ie(3)=ubound(r8)

      call check(ia,ubound(array=i4), 2)
      call check(ib,ubound(array=i4(1:2,0:-9:3)), 2)
      call check(ic,ubound(t), 1)
      call check(id,ubound(t(5)%i), 1)
      call check(ie,ubound(r8), 3)
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
