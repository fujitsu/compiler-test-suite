      n=0
      i1=1;i2=2;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 100
      write(6,*) "NG"
  100 continue

      i1=1;i2=2;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 200
      write(6,*) "NG"
  200 continue

      i1=1;i2=0;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 300
      write(6,*) "NG"
  300 continue

      i1=1;i2=0;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 400
        n=n+1
  400 continue

      i1=1;i2=0;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 500
        n=n+1
  500 continue

      i1=0;i2=2;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 600
        n=n+1
  600 continue

      i1=0;i2=2;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 700
        n=n+1
  700 continue

      i1=1;i2=0;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 800
        n=n+1
  800 continue

      i1=0;i2=2;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 900
        n=n+1
  900 continue

      i1=0;i2=0;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 910
        n=n+1
  910 continue

      i1=0;i2=0;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.and.i2.eq.j2) .or. (i3.eq.j3.and.i4.eq.j4) ) go to 920
        n=n+1
  920 continue

      if (n/=8) write(6,*) "NG"
      print *,'pass'

      end
