type test01a
integer(4),dimension (10) :: a
end type test01a

type test02a
complex,dimension (10) :: a=(3.0,4.0)
end type test02a

type test03a
character,dimension (10) :: a=(/'A','B','C','D','E','F','G','H','I','J'/)
end type test03a

type test04a
real(4),dimension (10) :: a=(/0.1,0.2,0.3,-0.4,-6.21,+4.555,0.7,0.8,0.9,1.0/)
end type test04a

type test05a
logical,dimension (10) :: a=.false.
end type test05a

type test07a
byte,dimension (10) :: a=1
end type test07a

type test08a
type(test05a) :: a
end type test08a

type (test01a) :: a01
type (test02a) :: a02
type (test03a) :: a03
type (test04a) :: a04
type (test05a) :: a05
type (test07a) :: a07
type (test08a) :: a08

a01%a=(/3.100,3.255,3.3*1.0,3.4+0.1,3.5,3.6,3.7,3.8,3+0.99999,2.9999999/)


if(any(a01%a.ne.3)) then
print *,"err(type-01a)"
end if

if(any(a02%a.ne.(3.0,4.0))) then
print *,"err(type-02a)"
end if

if(any(a03%a.ne.(/'A','B','C','D','E','F','G','H','I','J'/))) then
print *,"err(type-03a)"
end if

if(any(a04%a.ne.(/0.1,0.2,0.3,-0.4,-6.21,+4.555,0.7,0.8,0.9,1.0/))) then
print *,"err(type-04a)"
end if

if(any(a05%a)) then
print *,"err(type-05a)"
end if

if(any(a07%a.ne.1)) then
print *,"err(type-07a)"
end if

if(any(a08%a%a)) then
print *,"err(type-08a)"
end if

print *,"pass"

end
