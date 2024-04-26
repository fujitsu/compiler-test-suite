      PROGRAM MAIN
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
      INTEGER   i,j,k2
      DIMENSION igp(1024)

      do 1000 i=1,1024
        igp(i) = i
 1000     continue
      k2=100
      do 1041 i=21,k2
      do 1041 j=1,igp(i)
 1041      continue
      write(6,*) ' end '
      END
