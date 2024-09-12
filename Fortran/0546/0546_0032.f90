subroutine s1(d6)
type t
 integer::x1
 character(:),allocatable::c1
end type
type(t):: v1,v2
character(3):: d1='abc',d3(2)=[character(3)::'', 'abc'],d4,d6
character(*),parameter:: d2='abc'
v1=t(1,'abc')
if (v1%x1/=1) print *,101
if ((v1%c1/='abc')) print *,102
v2=t(1,d1)
if (v2%x1/=1) print *,201
if ((v2%c1/='abc')) print *,202
v2=t(1,d2)
if (v2%x1/=1) print *,301
if ((v2%c1/='abc')) print *,302
v2=t(1,d3(2))
if (v2%x1/=1) print *,401
if ((v2%c1/='abc')) print *,402
v2=t(1,d4())
if (v2%x1/=1) print *,501
if ((v2%c1/='abc')) print *,502
v2=t(1,d5())
if (v2%x1/=1) print *,601
if ((v2%c1/='abc')) print *,602
v2=t(1,d6)
if (v2%x1/=1) print *,701
if ((v2%c1/='abc')) print *,702
v2=t(1,adjustl('abc'))
if (v2%x1/=1) print *,701
if (v2%c1/=('abc')) print *,702
contains
character(3) function d5()
d5='abc'
end function
end
character(3),parameter:: d6='abc'
call s1(d6)
print *,'pass'
end
character(3) function d4()
d4='abc'
end
