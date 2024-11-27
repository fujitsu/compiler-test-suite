      call s(3)
print *,'pass'
      end
      subroutine s(i)
      type gr
         real,pointer::a(:)
      end type
      type(gr) grd(5)
      allocate(grd(i)%a(2))
      grd(3)%a(2)=1
      if (grd(3)%a(2)/=1)print *,'error'
      end
