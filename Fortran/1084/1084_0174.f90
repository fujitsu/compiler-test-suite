PROGRAM main
TYPE first
 Integer :: i1
END TYPE
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
type ty
  CLASS(second),allocatable :: tgt(:)
end type
type(ty),target::obj
allocate(second::obj%tgt(3))
 obj%tgt(1)%i1=1
 obj%tgt(2)%i1=2
 obj%tgt(1)%i2=3
 obj%tgt(2)%i2=4
     !call sub(obj%tgt)
     !call sub2(obj%tgt)
SELECT TYPE(X=>obj%tgt)
 type IS(second)
  X(1)%i1 = 12
  X(2)%i1 = 13
  SELECT TYPE(X=> obj%tgt)
   type IS(second)
     if(X(1)%i1.ne.12)print*,"311"
     X(1)%i1 = X(2)%i2
     call sub(obj%tgt)
     call sub2(obj%tgt)
     call sub2(X)
  END SELECT
END SELECT
print*,"PASS"
contains 
subroutine sub(A)
 CLASS(second),POINTER,INTENT(IN) :: A(:)
 SELECT TYPE(X=> A)
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
