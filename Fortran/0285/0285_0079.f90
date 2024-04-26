PROGRAM MAIN
IMPLICIT NONE

integer,DIMENSION(3) :: k
integer::i=0
CHARACTER(LEN = 12) :: a,b

a = '123456789012'

ASSOCIATE(aa => a,bb=>b,cc=>i,dd=>3,ee=>1,ff=>-1)
print*,'pass'
END ASSOCIATE

END PROGRAM MAIN
