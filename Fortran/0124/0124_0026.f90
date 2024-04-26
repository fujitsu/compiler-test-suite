
      complex(kind=4),dimension(1:10) :: cvar
      
      cvar = cos(0.0D0)
      cvar = cvar * 2.0

      if (real(sum(cvar)) .eq. 20.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, real(sum(cvar))
      endif
      end
