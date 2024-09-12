MODULE mod1
TYPE ty
INTEGER :: num
INTEGER :: num1(4)
END TYPE
TYPE,EXTENDS(ty):: ty1
TYPE(ty) :: k(2)
END TYPE
END MODULE

USE mod1
INTEGER :: n = 4, m = 0
TYPE(ty1) :: obj1
TYPE(ty) :: obj

obj%num = 2

ASSOCIATE(bb => obj1, aa=>obj)
  aa%num1(4) = 2
  aa%num = aa%num1(4)
  bb%k(2)%num = aa%num
  IF(bb%k(aa%num1(n)+ m)%num .EQ. 2) THEN
    PRINT*,'PASS'
  ELSE
    PRINT*,'FAIL'
  END IF
END ASSOCIATE
END
