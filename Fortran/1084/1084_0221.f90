PROGRAM main
TYPE first
 Integer :: i1
END TYPE
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
type ty
  CLASS(first),POINTER :: A
end type
type(ty)::obj
TYPE(second),TARGET :: tgt
 obj%A=>tgt
 obj%A%i1=2
SELECT TYPE(X=> obj%A)
 type IS(second)
  X%i1 = 12
  SELECT TYPE(X=> obj%A)
   class is(first)
     print*,"301"
   type IS(second)
     if(X%i1.ne.12)print*,"311"
     X%i1 = 13
   type IS(first)
     print*,"201"
  END SELECT
type IS(first)
 print*,"202"
END SELECT
if(tgt%i1.ne.13)print*,"301"
print*,"PASS"
END PROGRAM
