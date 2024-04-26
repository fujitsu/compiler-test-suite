PROGRAM main
IMPLICIT NONE

CHARACTER(LEN = 5) :: ch1,ch2 
CHARACTER(LEN = 3) :: ch3(2)
EQUIVALENCE(ch1,ch3(1)),(ch2,ch3(2))

ch1 = 'abcde'
ch2 = 'fghij'
ch3 = 'xxx'

ASSOCIATE(aa => ch1 , bb => ch2 , cc => ch3)
  IF(aa(1:3) .EQ. 'xxx') THEN
    cc = 'yyy'
  ELSE
    cc = 'qqq'
  END IF
  SELECT CASE(bb(1:3))
    CASE ('yyy')
    PRINT*,'pass'
  END SELECT
END ASSOCIATE

END PROGRAM
