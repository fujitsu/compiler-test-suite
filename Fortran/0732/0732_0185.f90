      module w
      type gr
         real,pointer::a(:)
      end type
      type(gr) grd(5)
      end module
      use w
      call s(3)
      grd(3)%a(1)=1.0
      if (grd(3)%a(1)/=1.)write(6,*) "NG"
      print *,'pass'
      end
      subroutine s(i)
      use w
      allocate(grd(i)%a(10))
      end
