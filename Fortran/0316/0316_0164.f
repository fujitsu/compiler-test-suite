
      integer  b(8:10,11:12)
      call sub(b)
      end

      subroutine sub(b)
      integer  b(8:10,*)
      type tag
        integer i(3:10)
      end type
      integer*4 i4(2,-10:10)
      type(tag) t(5:10)
      real*8    r8(10:-10+3)
      integer*1,parameter ::one=1
      integer*8,parameter ::two=2
      
      integer*4,parameter ::ia=ubound(i4,dim=two)
      integer*4,parameter ::ib=ubound(dim=one,array=t)
      integer*4,parameter ::ic=ubound(r8,one)
      integer*4,parameter ::id=ubound(b,one)

      call check(ia,ubound(i4,dim=two))
      call check(ib,ubound(dim=one,array=t))
      call check(ic,ubound(r8,one))
      call check(id,ubound(b,one))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
