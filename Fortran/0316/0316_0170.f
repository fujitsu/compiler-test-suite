
      type tag
        integer i(3:10)
      end type
      integer*4,parameter ::i4(2,-10:10)=1
      type(tag),parameter ::t(5:10)=tag(1)
      real*8,   parameter ::r8(10:-10,10:-10,10:-10)=1.0d+0
      
      integer*4,parameter ::ia=size(array=i4)
      integer*4,parameter ::ib=size(array=i4(1:2,0:-9:3))
      integer*4,parameter ::ic=size(t)
      integer*4,parameter ::id=size(t(5)%i)
      integer*4,parameter ::ie=size(r8)

      call check(ia,size(array=i4))
      call check(ib,size(array=i4(1:2,0:-9:3)))
      call check(ic,size(t))
      call check(id,size(t(5)%i))
      call check(ie,size(r8))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
