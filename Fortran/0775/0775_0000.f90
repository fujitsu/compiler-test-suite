module mod0
type T1
integer::i
end type
end

module mod
type T2
real j
end type
end module

module mod1
use mod0
use mod
public
end 

module mod2
use mod0
use mod
type(T1)::a
type(T2)::b
public::T1,T2,a,b
end 

use mod2
implicit none
a%i=1
b%j=2.0
end
