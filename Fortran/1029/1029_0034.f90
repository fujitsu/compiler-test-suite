      n=0
      i1=1;i2=2;i3=3;i4=4;i5=5;i6=6
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=0;i3=0;i4=4;i5=0;i6=6
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=0;i3=3;i4=0;i5=0;i6=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=2;i3=0;i4=0;i5=0;i6=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=1;i2=0;i3=0;i4=0;i5=0;i6=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=0;i3=0;i4=0;i5=5;i6=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=0;i2=0;i3=0;i4=4;i5=0;i6=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6
      if (i1.eq.k1 .or.                        &
          (i2.eq.k2.or.i3.eq.k3) .or.           &
          ((i4.eq.k4.or.i5.eq.k5).and.i6.eq.k6))    then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n/=7) write(6,*) "NG"
      print *,'pass'
      end
