  SUBROUTINE y(k,v)
type x
sequence
    CHARACTER(1):: c1(2,3,4)
    CHARACTER(1):: c2(2,3,4)
    CHARACTER(1):: c3(2,3,4)
end type
type(x),intent(out):: v(k)
do n=1,k
v(n)%c1='1'
v(n)%c2='1'
v(n)%c3='1'
end do
write(1,*) v(k)%c1
write(1,*) v(k)%c2
write(1,*) v(k)%c3
  END
type x
sequence
    CHARACTER(1):: c1(2,3,4)
    CHARACTER(1):: c2(2,3,4)
    CHARACTER(1):: c3(2,3,4)
end type
type(x):: v(2)
call y(2,v)
do n=1,2
if (v(n)%c1(1,1,1)/='1') print *,101
if (v(n)%c1(2,3,4)/='1') print *,102
if (v(n)%c2(1,1,1)/='1') print *,121
if (v(n)%c2(2,3,4)/='1') print *,122
if (v(n)%c3(1,1,1)/='1') print *,131
if (v(n)%c3(2,3,4)/='1') print *,132
end do
print *,'pass'
end
