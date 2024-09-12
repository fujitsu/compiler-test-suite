 MODULE rational_numbers
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rational
 INTEGER n,d
 CONTAINS
 PROCEDURE :: real => rat_to_real
 PROCEDURE,PRIVATE :: rat_asgn_i, rat_plus_rat, rat_plus_i
 PROCEDURE,PRIVATE,PASS(b) :: i_plus_rat
 GENERIC :: ASSIGNMENT(=) => rat_asgn_i
 GENERIC :: OPERATOR(+) => rat_plus_rat, rat_plus_i, i_plus_rat
 END TYPE
 CONTAINS

 ELEMENTAL REAL FUNCTION rat_to_real(this) RESULT(r)
 CLASS(rational),INTENT(IN) :: this
 r = REAL(this%n)/this%d
 END FUNCTION

 ELEMENTAL SUBROUTINE rat_asgn_i(a,b)
 CLASS(rational),INTENT(INOUT) :: a
 INTEGER,INTENT(IN) :: b
 a%n = b
 a%d = 1
 END SUBROUTINE

 ELEMENTAL TYPE(rational) FUNCTION rat_plus_i(a,b) RESULT(r)
 CLASS(rational),INTENT(IN) :: a
 INTEGER,INTENT(IN) :: b
 r%n = a%n + b*a%d
 r%d = a%d
 END FUNCTION

 ELEMENTAL TYPE(rational) FUNCTION i_plus_rat(a,b) RESULT(r)
 INTEGER,INTENT(IN) :: a
 CLASS(rational),INTENT(IN) :: b
 r%n = b%n + a*b%d
 r%d = b%d
 END FUNCTION

 ELEMENTAL TYPE(rational) FUNCTION rat_plus_rat(a,b) RESULT(r)
 CLASS(rational),INTENT(IN) :: a,b
 r%n = a%n*b%d + b%n*a%d
 r%d = a%d*b%d
 END FUNCTION
END

use rational_numbers
type(rational) :: obj1(5), obj2(5), obj3(5)

obj1%n=20
obj1%d=10
obj2%n=20
obj2%d=10
obj2(2)%n=50
obj2(2)%d=50
obj1=100
obj3 = obj1 +obj2
obj1%n=20
obj1%d=10
obj2%n=20
obj2%d=10
obj2(2)%n=50
obj2(2)%d=50
obj3 = obj1+10
obj3 = 50+obj1
print*, obj3
if(obj3(1)%n .NE. 520 ) print*, 'Error'
print*, 'pass'
END 
