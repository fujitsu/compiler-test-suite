module m1
       contains
       subroutine s01()
       type x
         real:: r
         real:: i
       end type
       complex,pointer :: c1(:)
       type(x),pointer :: c2(:)
      real,pointer :: rs
      allocate(c1(2),source=[(1,2),(3,4)])
     allocate(c2(2),source=[x(1,2),x(3,4)])
      rs=> c1(1)%im
      if (rs/=2) print *,202
      end subroutine
      end
      use m1
      call s01()
      print *,'pass'
      end

