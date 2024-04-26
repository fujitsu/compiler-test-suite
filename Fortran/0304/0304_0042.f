      INTEGER     x
      INTEGER     delta_x
      DATA x/0/
      DATA mx/-50/
      DATA neighbor_site/1/
      DATA L/50/

      DO delta_x=1,100
         x = mx + delta_x
         IF(x .LT. 0) x = x + L
         IF(x .GE. L) x = x - L
         neighbor_site = neighbor_site + 1
      END DO
      write(6,*) x,neighbor_site
      END
