      parameter (n=1)
      integer iseed(4)
      iseed(1)=1
      iseed(2)=2
      iseed(3)=3
      iseed(4)=4
      call sub(iseed,n)
      write(6,*) iseed(2),iseed(3),iseed(4)
      end
      SUBROUTINE SUB( ISEED, N )
      INTEGER            N
      INTEGER            ISEED( 4 )
      INTEGER            LV, IPW2
      PARAMETER          ( LV = 1, IPW2 = 4096 )
      INTEGER            I, I1, I2, I3, I4, IT1, IT2, IT3, IT4, J
      INTEGER            MM( LV, 4 )
      INTRINSIC          MIN, MOD, REAL
      DATA     ( MM( 1, J ), J = 1, 4 ) / 494, 322, 2508, 2549 /
      I1 = ISEED( 1 )
      I2 = ISEED( 2 )
      I3 = ISEED( 3 )
      I4 = ISEED( 4 )
      IT1=0
      DO 10 I = 1, MIN( N, LV )
         IT4 = I4*MM( I, 4 )
         IT3 = IT4 / IPW2
         IT4 = IT4 - IPW2*IT3
         IT3 = IT3 + I3*MM( I, 4 ) + I4*MM( I, 3 )
         IT2 = IT3 / IPW2
         IT3 = IT3 - IPW2*IT2
   10 CONTINUE
      ISEED( 2 ) = IT2
      ISEED( 3 ) = IT3
      ISEED( 4 ) = IT4
      RETURN
      END
