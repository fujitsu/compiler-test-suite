module m1
bind(c):: x
logical(4):: x
end
use m1
if (kind(x)/=4) print *,201
print *,'pass'
end
