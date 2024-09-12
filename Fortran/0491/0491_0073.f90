module m1
interface 
 module subroutine foo
 end
end interface
end

submodule (m1) smod
contains
module subroutine foo
real:: a(3,3)=0.1
real:: b(3,3)=0.2
real:: c(3,3)
c=matmul(a,b)
if (any(abs([c]-&
[6.00000024E-02,6.00000024E-02,6.00000024E-02,6.00000024E-02,6.00000024E-02&
,6.00000024E-02,6.00000024E-02,6.00000024E-02,6.00000024E-02]) &
> 0.01)) print *,101
end
end

use m1
call foo
print *,'pass'
end
