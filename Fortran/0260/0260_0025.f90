module m1
intrinsic dabs
contains
type(double precision) elemental function ret_dbprc(d1)
type(real(8)),intent(in)::d1
ret_dbprc=dabs(d1)
end function
end module

use m1
type(character*5)::a
type(character(4))::b
type(character(kind=1,len=8))::res1
type(character(kind=kind(res1),len=6))::res2
type(character(kind=kind('c'),len=9))::res3
type(character(len=13))::res4
type(character(len=10,kind=1))::res5
type(character(kind=1)) res6
type(double precision) dprc
type(real*8):: real_dummy=1.2

a='123456789A'
b='ABCDEFGHIJ'
res1=concat_string1(a,b)
if(kind(res2).ne.1)print*,'099'
if(len(res1).ne.8)print*,'100'
if(res1/='12345ABC')print*,'101'

res2=concat_string2(a)
if(len(res2).ne.6)print*,'102'
if(kind(res2).ne.1)print*,'103'
if(res2/='123PQR')print*,'104'

res3=concat_string3(a,b)
if(len(res3).ne.9)print*,'105'
if(kind(res3).ne.1)print*,'106'
if(res3/='123JKLMNA')print*,'107'

res4=concat_string4(a,b)
if(len(res4).ne.13)print*,'108'
if(kind(res4).ne.1)print*,'109'
if(res4/='12JKLMABC4398')print*,'110'

res5=concat_string5(a)
if(len(res5).ne.10)print*,'111'
if(kind(res5).ne.1)print*,'112'
if(res5/='12345PQRST')print*,'113'
res6=string1(b)
if(len(res6).ne.1)print*,'114'
if(kind(res6).ne.1)print*,'115'

dprc=ret_dbprc(real_dummy)
if(kind(dprc)/=8)print*,'116'
print*,'Pass'
contains 

type(character(len=8)) impure function concat_string1(a1,a2)
type(character(len=5))::a1
type(character(kind=1,len=4))::a2
concat_string1=a1//a2
end function

type(character(6)) function concat_string2(a1)
type(character(3))::a1
type(character(kind=1,len=4))::local
local='PQRSTU'
concat_string2=a1//local
end function

type(character(kind=kind('d'),len=9)) function concat_string3(a1,a2)
type(character(3))::a1
type(character*4)::a2
type(character(kind=1,len=5))::local

local='JKLMNOP'
concat_string3=a1//local//a2
end function


type(character*13) function concat_string4(a1,a2)
type(character(kind=kind('a'),len=2))::a1
type(character*3)::a2
type(character(kind=1,len=4))::local1
type(character(kind=1,len=2))::local2(2)
local1='JKLMNOP'
local2(1)='43210'
local2(2)='98765'
concat_string4=a1//local1//a2//local2(1)//local2(2)
end function
type(character(kind=1,len=10)) function concat_string5(a1)
type(character(len=5))::a1
type(character(kind=1,len=5))::local='PQRSTUVW'

concat_string5=a1//local
end function
type(character(kind=1)) function string1(a1)
type(character(len=4))::a1

string1=a1
end function
end
