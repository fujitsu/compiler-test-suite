      integer  a(6:10)
      integer  b(8:10,11:12)
      call sub(a,b)
      end

      subroutine sub(a,b)
      integer  a(*),b(8:10,*)
      type tag
        integer i(3:10)
      end type
      integer*4 i4(2,-10:10)
      type(tag) t(5:10)
      real*8    r8(10:-10+3)
      integer*1,parameter ::one=1
      integer*8,parameter ::two=2
      
      integer*4,parameter ::ia=lbound(i4,dim=two)
      integer*4,parameter ::ib=lbound(dim=one,array=t)
      integer*4,parameter ::ic=lbound(r8,one)
      integer*4,parameter ::id=lbound(a,one)
      integer*4,parameter ::ie=lbound(b,one)

      call check(ia,lbound(i4,dim=two))
      call check(ib,lbound(dim=one,array=t))
      call check(ic,lbound(r8,one))
      call check(id,lbound(a,one))
      call check(ie,lbound(b,one))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
