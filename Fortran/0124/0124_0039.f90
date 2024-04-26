
      complex(kind=4),dimension(1:10,1:10) ::  cvar4
      complex(kind=8),dimension(1:10,1:10) ::  cvar8
      complex(kind=16),dimension(1:10,1:10):: cvar16
      complex(kind=8),dimension(1:10,1:10) ::  ans
      real(kind=4)     rans
      
      cvar4   = cos(0.0D0)
      cvar8   = cos(0.0D0)
      cvar16  = cos(0.0D0)
      cvar4   = cvar4  + (0.0,1.0)
      cvar8   = cvar8  + (0.0,1.0)
      cvar16  = cvar16 + (0.0,1.0)
      cvar4   = cvar4  * (0.0,2.0)
      cvar8   = cvar8  * (0.0,2.0)
      cvar16  = cvar16 * (0.0,2.0)

      ans = cvar4 + cvar8 + cvar16

      if ( real(sum(ans)) .eq. imag(sum(ans)) ) then
        rans = real(sum(ans))
      else
        rans = imag(sum(ans))
      endif
      if (rans .eq. 600.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, rans
      endif
      end
