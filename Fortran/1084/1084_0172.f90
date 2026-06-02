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
 obj%tgt(1)%i1=11
 obj%tgt(2)%i1=11
 obj%tgt(3)%i1=11
 obj%tgt(1)%i2=11
 obj%tgt(2)%i2=11
 obj%tgt(3)%i2=11
SELECT TYPE(X=>obj%tgt)
 type IS(second)
  X(1)%i1 = 14
  X(2)%i1 = 14
  X(3)%i1 = 14
  call sub2(obj%tgt)
  call sub2(X)
END SELECT
  call sub2(obj%tgt)
print*,"PASS"
contains 
impure elemental subroutine sub2(A)
 CLASS(*),INTENT(IN) :: A
 SELECT TYPE(X=> A)
 type IS(first)
    print*,"401"
 type IS(second)
    if(X%i1.ne.14)print*,"121",X%i1
  END SELECT
 end
END PROGRAM
