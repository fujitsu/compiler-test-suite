PROGRAM main
IMPLICIT NONE

INTEGER :: arr(1:4,1:5,1:3,1:2) = 1,b

ASSOCIATE(aa => arr+3)
 b=aa(2,2,2,2)+2
 if(all(aa/=4)) print*,101
END ASSOCIATE

if(b==6) print*,'pass'

END PROGRAM
