! 

      complex(kind=4)  cvar4
      complex(kind=8)  cvar8
      complex(kind=16) cvar16
      complex(kind=8)  ans
      real(kind=4)     rans
      
      cvar4   = cos(0.0D0)
      cvar8   = cos(0.0D0)
      cvar16  = cos(0.0D0)
      cvar4   = cvar4  + (0.0,1.0)
      cvar8   = cvar8  + (0.0,1.0)
      cvar16  = cvar16 + (0.0,1.0)
      cvar4   = cvar4  * (0.0,1.0)
      cvar8   = cvar8  * (0.0,1.0)
      cvar16  = cvar16 * (0.0,1.0)

      ans = cvar4 + cvar8 + cvar16

      if ( real(ans) .eq. imag(ans) ) then
        rans = imag(ans) + real(ans)
      else
        rans = imag(ans) - real(ans)
      endif
      if (rans .eq. 6.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end
