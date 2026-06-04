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
 integer::m
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
  X1(1:2) = [second(10,20),second(10,20)]
  X1(1:2)%i1 = [12,13]
  X1(3:3) = [second( X1(1)%i1,20)]
  k = X1(1:2)%i2
  block 
  associate (XY=> obj%A)
  SELECT TYPE(X2=> XY)
   type IS(second)
     associate (XZ=>X2)
       if(any(X1(1:2:1)%i1.ne.[12,13]))print*,"311"
       X1(1:1:1)%i1 = XZ(2:2:1)%i2
       l = XZ(1:2)%i1
       m = X2(3)%i1
     end associate
    type IS(first)
     print*,"201"
  END SELECT
 end associate
end block
END SELECT
end block
end associate
if(tgt(1)%i1.ne.20)print*,"301" ,tgt(1)%i1
if(any(k.ne.[20,20]))print*,"302",k
if(any(l.ne.[20,13]))print*,"312" ,l
if(m.ne.12)print*,"117"
print*,"PASS"
END PROGRAM
