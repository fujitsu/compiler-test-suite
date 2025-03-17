      i1=1;i2=2;i3=3;i4=4;i5=5;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq. k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k7))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        n=1
      else
        write(6,*) "NG"
      endif

      i1=1;i2=0;i3=0;i4=4;i5=5;i6=0;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq. k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k7))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=1;i2=0;i3=0;i4=4;i5=0;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=2;i3=3;i4=4;i5=0;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i1=0;i2=0;i3=3;i4=4;i5=5;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=0;i2=2;i3=0;i4=4;i5=5;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=0;i2=2;i3=3;i4=0;i5=5;i6=6;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=0;i2=2;i3=3;i4=4;i5=0;i6=0;i7=7;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=2;i3=3;i4=4;i5=0;i6=6;i7=0;i8=8
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      i1=1;i2=2;i3=3;i4=4;i5=0;i6=6;i7=7;i8=0
      k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8
      if (((i1.eq.k1 .or. (i2.eq.k2 .and. i3.eq.k3)) .and.     &
           (i4.eq.k4 .and. (i5.eq.k5 .or. i6.eq.k6))) .and.    &
           (i7.eq.k7 .and. i8.eq.k8) )  then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n/=10) write(6,*) "NG"
      print *,'pass'

      end
