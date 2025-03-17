      n=0
      i1=1;i2=2;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 100
      write(6,*) "NG"
  100 continue

      i1=1;i2=0;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 200
      write(6,*) "NG"
  200 continue

      i1=1;i2=0;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 300
      write(6,*) "NG"
  300 continue

      i1=0;i2=2;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 400
      write(6,*) "NG"
  400 continue

      i1=0;i2=2;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 500
      write(6,*) "NG"
  500 continue

      i1=1;i2=2;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 600
      write(6,*) "NG"
  600 continue

      i1=1;i2=2;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 700
      write(6,*) "NG"
  700 continue

      i1=1;i2=0;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 800
      write(6,*) "NG"
  800 continue

      i1=0;i2=2;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 900
      write(6,*) "NG"
  900 continue

      i1=1;i2=0;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1000
        n=n+1
 1000 continue

      i1=0;i2=2;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1100
        n=n+1
 1100 continue

      i1=0;i2=0;i3=3;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1200
        n=n+1
 1200 continue

      i1=0;i2=0;i3=0;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1300
        n=n+1
 1300 continue

      i1=1;i2=2;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1400
        n=n+1
 1400 continue

      i1=0;i2=0;i3=3;i4=4
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1500
        n=n+1
 1500 continue

      i1=0;i2=0;i3=0;i4=0
      j1=1;j2=2;j3=3;j4=4
      if ( (i1.eq.j1.or.i2.eq.j2) .and. (i3.eq.j3.or.i4.eq.j4) ) go to 1600
        n=n+1
 1600 continue

      if (n/=7) write(6,*) "NG"
      print *,'pass'

      end
