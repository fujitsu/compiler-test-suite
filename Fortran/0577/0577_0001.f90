module m_1
type(integer)::int8
type(character)::ch1

procedure(type(logical(8))) ::pint22
procedure(type(logical(kind=8))) ::pint23
procedure(type(logical*8)) ::pint24
procedure(type(logical(kind=(12-4)))) ::pint25

procedure(type(double precision)) ::pint26
procedure(type(double precision)) ::pint27
procedure(type(double precision)) ::pint28
procedure(type(double precision)) ::pint29
end module

type(logical(8)) function pint22()
  pint22=.true.
end function

type(logical(kind=8)) function pint23()
  pint23=.true.
end function

type(logical*8) function pint24()
  pint24=.true.
end function

type(logical(kind=(12-4))) function pint25()
  pint25=.true.
end function

type(double precision) function pint26()
 pint26=11.111
end function

type(double precision) function pint27()
  pint27=11.111
end function

type(double precision) function pint28()
  pint28=11.111
end function

type(double precision) function pint29()
  pint29=11.111
end function

use m_1
implicit type(double precision) (p)
implicit type(double precision) (q)
implicit type(double precision) (r)
implicit type(double precision) (s)
type(logical(8))                :: a22
type(logical(kind=8))           :: a23
type(logical*8)                 :: a24
type(logical(kind=(12-4)))      :: a25


a22=pint22()
a23=pint23()
a24=pint24()
a25=pint25()
p=pint26()
q=pint27()
r=pint28()
s=pint29()

if(a22 .neqv. .true.) print *,101
if(kind(a22) /=8) print *,102
if(a23 .neqv. .true.) print *,103
if(kind(a23) /=8) print *,104
if(a24 .neqv..true.) print *,105
if(kind(a25) /=8) print *,106
if(a25 .neqv. .true.) print *,107
if(kind(a25) /=8) print *,108

if(p /=11.111) print *,109
if(kind(p) /=8) print *,110
if(q /=11.111) print *,111
if(kind(q) /=8) print *,112
if(r /=11.111) print *,113
if(kind(r) /=8) print *,114
if(s /=11.111) print *,115
if(kind(s) /=8) print *,116

print *,"Pass"
end

