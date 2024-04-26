
type test01e
integer,dimension(10) :: x=6
end type test01e

type test02e
real,dimension(10) :: y=3.141592
end type test02e

type test03e
complex,dimension(10) :: z=(12,13)
end type test03e

type test04e
logical,dimension(10) :: l=.false.
end type test04e

type test05e
real,dimension(10)           :: x=125.e-1
end type test05e

type test06e
integer,dimension(10)           :: b=b"110"
end type test06e

type test07e
integer,dimension(10)           :: c="55753"o 
end type test07e

type test08e
integer,dimension(10)           :: a="FFFF"x
end type test08e

type (test01e) :: e01
type (test02e) :: e02
type (test03e) :: e03
type (test04e) :: e04
type (test05e) :: e05
type (test06e) :: e06
type (test07e) :: e07
type (test08e) :: e08


if(any(e01%x.ne.6)) then
print *,"err-test01e"
end if

if(any(abs(e02%y-3.141592).gt.0.00001)) then
print *,"err-test02e"
end if

if(any(cabs(e03%z-(12,13)).gt.cabs((0.00001,0.00001)))) then
print *,"err-test03e"
end if


if(any(e04%l)) then
print *,"err-test04e"
end if

if(any(abs(e05%x-125.e-1).gt.0.00001)) then
print *,"err-test05e"
end if

if(any(e06%b.ne.b"110")) then
print *,"err-test06e"
end if

if(any(e07%c.ne."55753"o)) then
print *,"err-test07e"
end if

if(any(e08%a.ne."FFFF"x)) then
print *,"err-test08e"
end if

print *,"pass"
end
