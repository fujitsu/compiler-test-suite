! 

      complex(kind=16)  cvar16
      
      cvar16  = cos(0.0D0)
      cvar16  = cvar16  + real(2.0,kind=4)

      if (cvar16 .eq. 3.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, cvar16
      endif
      end
