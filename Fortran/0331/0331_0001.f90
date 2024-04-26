type test01a
integer(2) :: a=2.9999999
end type test01a

type test02a
complex :: a=(12,13)
end type test02a

type test03a
character  :: a="C"
end type test03a

type test04a
real :: a=3.0
end type test04a

type test05a
logical :: a=.false.
end type test05a

type test07a
byte :: a=b"11"
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

if(a01%a.ne.3) then 
print *,"err test-01a"
end if

if(a02%a.ne.(12.0,13.0)) then 
print *,"err test-02a"
end if

if(a03%a.ne.'C') then 
print *,"err test-03a"
end if

if(a04%a.ne.3) then 
print *,"err test-04a"
end if

if(a05%a) then 
print *,"err test-05a"
end if

if(a07%a.ne.3) then 
print *,"err test-07a"
end if

if(a08%a%a) then 
print *,"err test-08a"
end if

print *,"pass"
end
