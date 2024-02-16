      complex(kind=8)::c16a(10)

      interface
        integer(kind=KIND(-1)) function funchk(c16)
        complex(kind=8)        ,optional,intent(in)::c16(10)
        end function
      endinterface

      call init_c16(c16a)
      print *,c16a(5)
      c16a(INT(c16a))=c16a
      print *,c16a(6)
      end

      subroutine init_c16(c16)
      complex(kind=8),intent(out)::c16(10)
      c16=(/(cmplx(DBLE(i),DBLE(-i)),i=10,1,-1)/)
      return
      end

