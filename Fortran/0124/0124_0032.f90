
      complex(kind=4)  cvar4
      complex(kind=8)  cvar8
      complex(kind=16) cvar16
      real(kind=8)     ans
      
      cvar4  = cos(0.0D0)
      cvar8  = cvar4
      cvar16 = cvar8
      cvar4  = 4.0 * cvar4
      cvar8  = 4.0 * cvar8
      cvar16 = 4.0 * cvar16

      ans = real(cvar4,kind=8)+real(cvar8,kind=8)+real(cvar16,kind=8)
      if (ans .eq. 12.0) then
        print *, "OK"
      else
        print *, "NG"
      endif
      end
