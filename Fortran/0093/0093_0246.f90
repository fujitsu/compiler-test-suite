module m1
       contains
       subroutine s01()
       type x
         real:: r
         real:: i
       end type
       complex,pointer :: c1
      real,pointer :: rs
      allocate(c1)
      c1=(5,6)
      rs=> c1%im
      if (rs/=6) print *,202
      end subroutine
      end
      use m1
      call s01()
      print *,'pass'
      end

