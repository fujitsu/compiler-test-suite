      COMPLEX*16  R/(4.,-9.)/
      COMPLEX*16 T2/(1.,-3.)/,T3,T1(10)/1,2,3,4,5,6,7,8,9,10/
      complex*16  T4/(8,20)/

      DO I=1,4
      T3=T2+R
      T4 = T3
      T1(1) = T4
      T2 = T1(1)
      END DO
      print*,'T3=',T3

      DO I=1,4
      T3=T2+R
      T4 = T3
      T1(1) = T4-1
      T2 = T1(1)
      END DO
      print*,'T3=',T3
      END
