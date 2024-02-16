       module m1
       contains
       subroutine s01(c)
       complex,pointer,intent(in) :: c
       c%re=5
       end subroutine
       end
       use m1
      complex,target :: ct
      call s01(ct)
      if (ct%re/=5) print *,101
      print *,' pass'
      end

