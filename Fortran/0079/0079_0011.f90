MODULE m
  TYPE t(kind)
     INTEGER, KIND :: kind
     COMPLEX(kind) value
  END TYPE t
  INTEGER,PARAMETER :: single = KIND(0.0), double = KIND(0d0)
  INTERFACE t
     module TYPE(t(single)) FUNCTION real_to_t1(x)
       REAL(single) x
     END FUNCTION real_to_t1
     module TYPE(t(double)) FUNCTION dble_to_t2(x)
       REAL(double) x
     END FUNCTION dble_to_t2
     module TYPE(t(single)) FUNCTION int_to_t1(x,mold)
       INTEGER x
       TYPE(t(single)) mold
     END FUNCTION int_to_t1
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
  module procedure dble_to_t2
    dble_to_t2%value = x
  END 
  module procedure int_to_t1
    int_to_t1%value = x
  END 
  module procedure int_to_t2
    int_to_t2%value = x
  END 
END subMODULE smod

use m
type(t(single))::s
type(t(double))::d
real(double)::r=2.1
s = t(1,t(single)(0))
if (s%value /= (1,0)) print *,101
s = t(1.1)
d = t(2, t(double)(0))
d = t(r)
print *,'pass'
end
