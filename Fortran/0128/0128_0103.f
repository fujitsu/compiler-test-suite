      type f90str1; integer*4::k4; end type
      type f90str2; integer*4::k4; end type

      type(f90str1) v_x ; pointer (v_p,v_x)
      type(f90str2) v_i

      v_p=loc(v_i)
      v_i%k4=1
      do i=1,10;  v_i%k4=v_x%k4+i; enddo

      if ( v_i%k4.ne.56 ) then
         print *,'** ng **'
      else
         print *,'** ok **'
      endif

      end
