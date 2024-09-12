module m1
type x
  integer ::a1
  character(:),allocatable::a
end type
character(3),allocatable::b
end
subroutine s1
use m1
     type (x),allocatable::v1(:),v2(:)
     allocate(v1(2),v2(2))
 allocate(character(2)::v1(2)%a)
v1(2)%a(:)='12'
 allocate(                 b)
b(:)='abc'
if (   (v1(2)%a/='12'))print *,101
if (len(v1(2)%a)/=2)print *,102
if (   (b   /='abc'))print *,201
if (len(b   )/=3)print *,202
v1(2)=x(10,b)
if (   (v1(2)%a/='abc'))print *,301
if (len(v1(2)%a)/=3)print *,302
!
 allocate(character(2)::v2(2)%a)
v2(2)%a='12'
if (   (v2(2)%a/='12'))print *,101
v2=v1
if (   (v2(2)%a/='abc'))print *,401
if (len(v2(2)%a)/=3)print *,402
!
end
call s1
print *,'pass'
end

