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
TYPE(second),TARGET :: tgt(5)
integer::k=2
 obj%A=>tgt
 tgt(1)%i1=1
 tgt(2)%i1=2
 tgt(3)%i1=3
 tgt(4)%i1=4
 tgt(5)%i1=5
 tgt(1)%i2=11
 tgt(2)%i2=12
 tgt(3)%i2=13
 tgt(4)%i2=14
 tgt(5)%i2=15
 call sub2(obj%A(1:5:k))
SELECT TYPE(X=> obj%A)
 type IS(first)
    print*,"401"
 type IS(second)
     call sub2(obj%A(1:5:k))
  END SELECT
print*,"PASS"
contains 
subroutine sub2(A)
 CLASS(*),optional,contiguous :: A(:)
 if(present(A)) then
 SELECT TYPE(X=> A)
 type IS(first)
    print*,"401"
 type IS(second)
    if(X(1)%i1.ne.1)print*,"121"
    if(X(2)%i1.ne.3)print*,"122"
    if(X(3)%i1.ne.5)print*,"123"
    if(X(1)%i2.ne.11)print*,"121"
    if(X(2)%i2.ne.13)print*,"122"
    if(X(3)%i2.ne.15)print*,"123"
  END SELECT
 endif
 end
END PROGRAM
