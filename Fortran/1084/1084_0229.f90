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
 integer::k(2) =0
 integer::l(2) =0
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
  type IS(second)
  X1(1:2)%i1 = [12,13]
  k = X1(1:2)%i2
  SELECT TYPE(X2=> obj%A)
   type IS(second)
     if(any(X1(1:2:1)%i1.ne.[12,13]))print*,"311"
     X1(1:1:1)%i1 = X2([2])%i2
     l = X2(1:2)%i1
    type IS(first)
     print*,"201"
  END SELECT
END SELECT
end block
end associate
if(tgt(1)%i1.ne.4)print*,"301" ,tgt(1)%i1
if(any(k.ne.[3,4]))print*,"302"
if(any(l.ne.[4,13]))print*,"312" ,l
print*,"PASS"
END PROGRAM
