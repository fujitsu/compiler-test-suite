module m1
       contains
       subroutine s01()
       type x
         complex,pointer:: cmp
         real:: r
         real:: i
       end type
       type x2
         type(x):: c
       end type
       type(x2) :: c1
      real,pointer :: rs
      allocate(c1%c%cmp)
      c1%c%cmp=(6,8)
      rs=> c1%c%cmp%im
      if(rs/=8) print*,202
      end subroutine
      end
      use m1
      call s01()
      print *,'pass'
      end

