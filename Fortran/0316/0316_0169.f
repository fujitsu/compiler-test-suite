
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
      
      integer*4,parameter ::ia=size(i4,dim=two)
      integer*4,parameter ::ib=size(dim=one,array=t)
      integer*4,parameter ::ic=size(r8,one)
      integer*4,parameter ::id=size(b,one)

      call check(ia,size(i4,dim=two))
      call check(ib,size(dim=one,array=t))
      call check(ic,size(r8,one))
      call check(id,size(b,one))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
