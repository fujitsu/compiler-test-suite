module m1
 type t4
    procedure(sin),nopass,pointer::f
 end type
private::sin
end
use m1
print *,'pass'
end
