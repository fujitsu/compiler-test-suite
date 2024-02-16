module m1
       contains
       subroutine s01()
       type x
         complex,pointer:: cmp
         real:: r
         real:: i
       end type
       type(x) :: c1
      real,pointer :: rs
      allocate(c1%cmp)
      c1%cmp=(7,9)
      rs=> c1%cmp%im
      if (rs/=9) print *,202
      end subroutine
      end
      use m1
      call s01()
      print *,'pass'
      end

