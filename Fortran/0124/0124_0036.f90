! 

      real(kind=4),dimension(1:10) :: r4
      real(kind=8),dimension(1:10) :: r8
      real(kind=16),dimension(1:10):: r16
      real(kind=8),dimension(1:10) :: ans
      
      r4  = cos(0.0D0)
      r8  = cos(0.0D0)
      r16 = cos(0.0D0)
      
      r4  = r4  + 0.0
      r8  = r8  + 0.0
      r16 = r16 + 0.0

      ans = r4 + r8 + r16

      if (int(sum(ans)) .eq. 30) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end
