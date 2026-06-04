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
associate (XX=> obj%A)
block 
 SELECT TYPE(X1=>XX)
  type IS(first)
    print*,"401"
  class IS(second)
    SELECT TYPE(X1)
      type IS(second)
       X1(X1(1)%i1:2:X1(1)%i1) = [second(1,2),second(1,2)]
       block 
       associate (XY=> obj%A)
       SELECT TYPE(X2=> XY)
          type IS(second)
            associate (XZ=>X2)
               if(any(X1(X1(1)%i1:2:XY(1)%i1)%i1.ne.[1,1]))print*,"311"
               if(any(X1(X1(1)%i1:2:XZ(1)%i1)%i2.ne.[2,2]))print*,"321"
               call sub(rank(X1(1)%i1) ,X1(X1(1)%i1:2:XY(1)%i1)%i2)
            end associate
          type IS(first)
            print*,"201"
       END SELECT
     end associate
     end block
END SELECT
END SELECT
end block
end associate
print*,"PASS"
contains
 subroutine sub(a,b)
  integer::a
  integer::b(:)
  if(a.ne.0)print*,"101"
  if(any(b.ne.2))print*,"102"
 end
END PROGRAM
