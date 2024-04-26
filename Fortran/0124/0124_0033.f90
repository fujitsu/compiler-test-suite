
      complex(kind=4)  cvar4
      complex(kind=8)  cvar8
      real(kind=8)     ans
      
      cvar4  = cos(0.0D0)
      cvar8  = cvar4
      cvar4  = cvar4  + 2.0D0
      cvar4  = cvar4  + real(2.0,kind=8)
      cvar4  = cvar4  + real(2.0,kind=16)
      cvar8  = cvar8  + real(2.0,kind=16)

      ans = real(cvar4,kind=8)+real(cvar8,kind=8)
      if (ans .eq. 10.0) then
        print *, "OK"
      else
        print *, "NG"
      endif
      end
