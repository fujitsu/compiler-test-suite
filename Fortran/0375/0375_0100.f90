module m1
 type s
   integer(1),allocatable::i(:)
   integer(1)        ::j
 end type
 integer(1),target::v1(2:2)=11,v2(2:2)=21,v3(2:2)=31
 integer(1),target::d1(2:2)=1,d2(2:2)=2,d3(2:2)=3
contains
 subroutine s3(k,j,i)
 type(s),value::i,j,k
    if (k%i(2)/=11)print *,'fail1',k%i(1)
    if (k%j/=12)print *,'fail2'
  k=s(d1,1)
    if (j%i(2)/=21)print *,'fail3',j%i(1)
    if (j%j/=22)print *,'fail4'
  j=s(d2,2)
    if (i%i(2)/=31)print *,'fail5',i%i(1)
    if (i%j/=32)print *,'fail6'
  i=s(d3,3)
  end subroutine
end
use m1
type(s)::i,j,k
allocate(i%i(2:2),j%i(2:2),k%i(2:2))
k=s(v1,12)
j=s(v2,22)
i=s(v3,32)
call s3(k,j,i)
    if (k%j/=12)print *,'fail7'
    if (j%j/=22)print *,'fail8'
    if (i%j/=32)print *,'fail9'
print *,'pass'
end
