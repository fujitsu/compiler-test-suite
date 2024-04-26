module m1
 type t4
    procedure(sin),nopass,pointer::f
 end type
end
use m1
print *,'pass'
end
