c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      complex (kind=4) a1
      complex (kind=8) a2
      complex (kind=16) a3
      if (kind(a1)/=4)print *,'fail'
      if (kind(a2)/=8)print *,'fail'
      if (kind(a3)/=16)print *,'fail'
      end
