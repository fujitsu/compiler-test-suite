module m0
    procedure(sin),pointer ::p
end

pure subroutine sub()
use m0

i=p(1.0)
end

print *,'pass'
end
