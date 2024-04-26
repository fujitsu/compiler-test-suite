MODULE m
  TYPE t(kind)
     INTEGER, KIND :: kind
     COMPLEX(kind) value
  END TYPE t
  INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
  INTERFACE t
     module TYPE(t(double)) FUNCTION real_to_t1(x)
       REAL(single) x
     END FUNCTION real_to_t1
     module TYPE(t(double)) FUNCTION int_to_t2(x,mold)
       INTEGER x
       TYPE(t(double)) mold
     END FUNCTION int_to_t2
  END INTERFACE t
end MODULE m

subMODULE(m)smod
CONTAINS
  module procedure real_to_t1
    real_to_t1%value = x
  END 
  module procedure int_to_t2
   TYPE(t(double)) :: obj
   TYPE(t(double)) :: obj2
   TYPE(t(single)) :: obj3
    int_to_t2%value = x
write(1,*) 103
  END 
END subMODULE smod

use m
type(t(double))::d
real(double)::r=2.1
d = t(2, t(double)(0))
if (abs(d%value-2)>0.001) print *,201
rewind 1
read(1,*) k
if (k/=103) print *,401
print *,'pass'
end
