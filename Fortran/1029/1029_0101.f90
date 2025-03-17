      complex::k,j

      k=(2.0,1.0)
      j=0
      if ( (1.0,1.0)+j.ne.k .and. k.ne.(1.0,1.0) ) then
        n=1
      else
        write(6,*) "NG"
      endif

      j=1
      if ( (1.0,1.0).eq.j .and. j.eq.(1.0,1.0) ) then
        write(6,*) "NG"
      endif

      k=(2.0,2.0)
      if ( (1.0,1.0).eq.k .and. k.eq.(1.0,1.0) ) then
        write(6,*) "NG"
      endif

      print *,'pass'
      end
