      complex::k
      n=0

      k=(2.0,1.0)
      if ( (1.0,1.0).ne.k .and. k.ne.(1.0,1.0) ) then
        if ( (1.0,1.0).ne.k .and. k.ne.(1.0,1.0) ) then
          if ( (1.0,1.0).ne.k .and. k.ne.(1.0,1.0) ) then
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

      j=1
      if ( (1.0,1.0).eq.j .and. j.eq.(1.0,1.0) ) then
        write(6,*) "NG"
      else
        if ( (1.0,1.0).eq.j .and. j.eq.(1.0,1.0) ) then
          write(6,*) "NG"
        else
          if ( (1.0,1.0).eq.j .and. j.eq.(1.0,1.0) ) then
            write(6,*) "NG"
          else
            n=n+1
          endif
        endif
      endif

      k=(2.0,2.0)
      if ( (1.0,1.0).eq.k .and. k.eq.(1.0,1.0) ) then
        write(6,*) "NG"
      else
        if ( (1.0,1.0).eq.k .and. k.eq.(1.0,1.0) ) then
          write(6,*) "NG"
        else
          if ( (1.0,1.0).eq.k .and. k.eq.(1.0,1.0) ) then
            write(6,*) "NG"
          else
            n=n+1
          endif
        endif
      endif

      if (n/=3) write(6,*) "NG"
      print *,'pass'
      end
