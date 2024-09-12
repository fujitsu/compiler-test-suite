module mod
type T1
integer:: x
end type
end 

module mod1
use mod
type(T1),EXTERNAL::a
end

module mod2
use mod1,only:a
end

use mod2
print *,a()
print *,'pass'
end

type(T1) function a()
use mod
a%x=1
end
