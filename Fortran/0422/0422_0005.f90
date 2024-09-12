MODULE ex1
  INTEGER :: mylen=2
CONTAINS
  ELEMENTAL CHARACTER(mylen) FUNCTION f(a)
    INTEGER,INTENT(IN) :: a
    f = REPEAT(CHAR(a),mylen)
  END FUNCTION
END MODULE

use ex1
integer :: a(3)=[ichar(['1','2','3'])]
character(2) :: b(3)
b = f(a)
if (any(b/=['11','22','33']))print *,102,b 
print *,'pass'
end
