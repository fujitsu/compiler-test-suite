      program main
      real   r1,r2
      data r1/z'ffffffff'/,r2/z'0000000f'/

      if(r1.eq.r2) then
         write(6,*) "error_1"
      else
         write(6,*) "pass_1"
      endif

      end
