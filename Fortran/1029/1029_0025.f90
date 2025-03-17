      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4

      if ( (i1.eq.k4-k3+1 .and. i2.eq.k3-k2) .or. i3.eq.k4-k1 ) then
        n=1
      else
        write(6,*) "NG"
      endif

      print *,'pass'

      end
