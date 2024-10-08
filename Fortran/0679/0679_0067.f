      real*4 a040(-19:+20,-19:+20)
      data   a040/01600*16.0e0/
      data   j1,j2,j3,j4,j5,j6/+1,-2,+3,-4,+5,-6/

      j1 = +1
      j2 = -2
      j3 = +3
      j4 = -4
      j5 = +5
      j6 = -6

      do 90 i1 = -10 , +10 , 01
       do 90 i2 = +10 , -10 , -01
         a040(+i1+00,+i2+00) = a040(+i1+00,+i2+00) + i1+i2
90    continue

      do 10 i1 = -10 , +10 , 01
       do 10 i2 = +10 , -10 , -01
         a040(+i1+j2,+i2+00) = a040(+i1+00,+i2+00) + i2+j2
         a040(+i1+j3,+i2+00) = a040(+i1+00,+i2+00) + i2+j3
         a040(+i1+j4,+i2+00) = a040(+i1+00,+i2+00) + i2+j4
         a040(+i1+j5,+i2+00) = a040(+i1+00,+i2+00) + i2+j5
         a040(+i1+j6,+i2+00) = a040(+i1+00,+i2+00) + i2+j6

         a040(+i1+j2,+i2+j2) = i1+j2
         a040(+i1+j3,+i2+j3) = i1+j3
         a040(+i1+j4,+i2+j4) = i1+j4
         a040(+i1+j5,+i2+j5) = i1+j5
         a040(+i1+j5,+i2+j6) = i1+j6
10    continue

      print *,'   *=*=* a040(-19:+20,-19:+20) *=*=* '
      write(6,100) ((a040(i1,i2),i1=-19,+20),i2=-19,+20)
100   format(1h ,2x,5e15.7)
      stop
      end
