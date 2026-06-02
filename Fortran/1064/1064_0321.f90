subroutine s1
type y
  integer:: y1
  integer,allocatable::y2
  integer:: y3
end type
type(y):: v1,v2
allocatable::v1

if (     allocated(v2%y2)) print *,105
v2%y1=2
v2%y3=3
if (    v2%y1/=2) print *,115
if (    v2%y3/=3) print *,116
v1=v2
if (     allocated(v2%y2)) print *,108
if (     allocated(v1%y2)) print *,109
if (    v1%y1/=2) print *,117
if (    v1%y3/=3) print *,118
end
call s1
print *,'pass'
end
