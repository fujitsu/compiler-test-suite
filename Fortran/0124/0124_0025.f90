! 

      complex(kind=4) cvar
      
      cvar = cos(0.0D0)
      cvar = cvar * 4.0

      if (real(cvar) .eq. 4.0) then
        print *, "OK"
      else
        print *, "NG"
      endif
      end
