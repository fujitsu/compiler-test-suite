! 

      complex(kind=8)  cvar8
      real(kind=8)     ans
      complex(kind=8)  subfunc
      
      cvar8 = cos(0.0D0)
      cvar8 = subfunc( cvar8 ) + 2.0
      cvar8 = subfunc( cvar8 ) * 2.0
      
      ans = cvar8

      if (int(ans) .eq. 4) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end

      complex(kind=8) function subfunc( dt )
      complex(kind=8) dt
      subfunc = dt * (1.0, 1.0)
      return
      end function subfunc
