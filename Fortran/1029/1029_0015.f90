      n=0
      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4

      if  (i1.eq.k1 .and.(i2.eq.k2 .and. i3.eq.k3).and. i4.eq.k4) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=3

      if  (i1.eq.k1 .and.(i2.eq.k2 .and. i3.eq.k3).and. i4.eq.k4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=2;i3=3;i4=4
      k1=1;k2=2;k3=4;k4=4

      if  (i1.eq.k1 .and.(i2.eq.k2 .and. i3.eq.k3).and. i4.eq.k4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=1;i3=3;i4=4
      k1=1;k2=2;k3=3;k4=4

      if  (i1.eq.k1 .and.(i2.eq.k2 .and. i3.eq.k3).and. i4.eq.k4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=1;i3=3;i4=4
      k1=0;k2=2;k3=3;k4=4

      if  (i1.eq.k1 .and.(i2.eq.k2 .and. i3.eq.k3).and. i4.eq.k4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n/=5) write(6,*) "NG"
      print *,'pass'

      end
