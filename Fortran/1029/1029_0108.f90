      real(4)::r4
      real(8)::r8
      real(16)::r16

      r4=4.0e0;r8=8.0d0;r16=16.0q0
      n=0

      if (abs(r4-4.0e0)<=1.0e-4) then
        if (abs(r8-8.0d0)<=1.0d-8) then
          if (abs(r16-16.0q0)<=1.0q-16) then
              if (r4*2.eq.r8.and.r8*2.eq.r16) then
                n=n+1
              else
                write(6,*) "NG"
              endif
          else
            write(6,*) "NG"
          endif
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif

     print *,'pass'
    end
