PROGRAM main
TYPE first
 Integer :: i1
END TYPE
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
type ty
  CLASS(first),POINTER :: A(:)
end type
type(ty)::obj
TYPE(second),TARGET :: tgt(3)
 obj%A=>tgt
 tgt(1)%i1=1
 tgt(2)%i1=2
 tgt(1)%i2=3
 tgt(2)%i2=4
     !call sub(obj%A)
     !call sub2(obj%A)
SELECT TYPE(X=> obj%A)
 type IS(first)
    print*,"401"
 type IS(second)
  X(1)%i1 = 12
  X(2)%i1 = 13
  SELECT TYPE(X=> obj%A)
   type IS(second)
     if(X(1)%i1.ne.12)print*,"311"
     X(1)%i1 = X(2)%i2
     call sub(obj%A)
     call sub2(obj%A)
     call sub2(X)
    type IS(first)
     print*,"201"
  END SELECT
END SELECT
if(tgt(1)%i1.ne.14)print*,"301" ,tgt(1)%i1
print*,"PASS"
contains 
subroutine sub(A)
 CLASS(first),POINTER :: A(:)
 SELECT TYPE(X=> A)
 type IS(first)
    print*,"401"
 type IS(second)
    if(X(1)%i1.ne.4)print*,"101"
    X(1)%i1 =14
  END SELECT
 end
subroutine sub2(A)
 CLASS(*) :: A(:)
 SELECT TYPE(X=> A)
 type IS(first)
    print*,"401"
 type IS(second)
    if(X(1)%i1.ne.14)print*,"121"
   SELECT TYPE(A)
   type IS(first)
      print*,"401"
   type IS(second)
    if(X(1)%i1.ne.14)print*,"122"
   END SELECT
  END SELECT
 end
END PROGRAM
