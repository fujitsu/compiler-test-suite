      n=0
      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4
      if ( ((i1.lt.k1).and.(k2.lt.i2).and.(i3.lt.k3)) &
            .and.(k4.lt.i4) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4
      if ( ((i1.le.k1).and.(k2.le.i2).and.(i3.le.k3)) &
            .and.(k4.lt.i4) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4
      if ( ((i1.le.k1).and.(k2.le.i2).and.(i3.le.k3)) &
            .and.(k4.le.i4) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (n/=3) write(6,*) "NG"
      print *,'pass'

      end
