subroutine s1
integer a(2:3,12:13)

k1=1
k2=1
 a=-11
do concurrent(k2=12:13)
do concurrent(k1=2:3)
 if (k1<4) cycle
 a(k1,k2)=-1
end do
end do
if (k1/=1) print *,101
if (k2/=1) print *,102
if (any(a/=-11)) print *,103

do  1 concurrent(k2=12:13)
do  1 concurrent(k1=2:3)
 a(k1,k2)=if()
1 continue
if (k1/=1) print *,201
if (k2/=1) print *,202
if (any(a/=-12)) print *,203
contains
pure function if()
if=-12
end function
end
call s1
print *,'pass'
end

