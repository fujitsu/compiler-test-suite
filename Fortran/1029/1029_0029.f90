      i1=1;i2=2;i3=3
      k1=1;k2=2;k3=3

      if ( (i1.eq.k1 .or. i2.eq.k2) .and. (.not.i3.eq.k3) ) then
        write(6,*) "NG"
      else
        n=1
      endif

      i1=1;i2=2;i3=2
      k1=1;k2=2;k3=3

      if ( (i1.eq.k1 .or. i2.eq.k2) .and. (.not.i3.eq.k3) ) then
        n=1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=2;i3=2
      k1=1;k2=2;k3=3

      if ( (i1.eq.k1 .or. i2.eq.k2) .and. (.not.i3.eq.k3) ) then
        n=1
      else
        write(6,*) "NG"
      endif

      print *,'pass'

      end
