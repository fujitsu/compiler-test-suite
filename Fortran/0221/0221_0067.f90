module m1
    procedure(sin),pointer::f
private
public::f
end
use m1
print *,'pass'
end
