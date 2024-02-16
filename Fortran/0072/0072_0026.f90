module m1
contains
subroutine ssx(k,a,s,aa,ss)
character(k)::a(:,:,:)
character(k)::s(:)
character(3)::aa(:,:,:)
character(3)::ss(:)
namelist /nam/a,s,aa,ss
open(1,delim='quote')
write(1,nam)
end subroutine
end
use m1
parameter(k=3)
character(k)::a(3,3,3)
character(k)::s(3)
character(3)::aa(3,3,3)
character(3)::ss(3)
a(::2,::2,::2)=reshape(['123','456','789','abc','def','ghi','jkl','mno'],[2,2,2])
aa(::2,::2,::2)=reshape(['123','456','789','abc','def','ghi','jkl','mno'],[2,2,2])
s(::2)=['pqr',['stu'] ]
ss(::2)=['pqr',['stu'] ]
call ssx(3,a(::2,::2,::2),s(::2),aa(::2,::2,::2),ss(::2))
call chk
print *,'pass'
end
subroutine chk
character(3) a(8),s(2),aa(8),ss(2)
namelist /nam/a,s,aa,ss
rewind 1
read(1,nam) 
if (any(a/=&
                ['123','456','789','abc','def','ghi','jkl','mno'] &
)) print *,101
if (any(s/= &
['pqr','stu']) &
) print *,102
if (any(aa/=&
                ['123','456','789','abc','def','ghi','jkl','mno'] &
)) print *,103
if (any(ss/= &
['pqr','stu']) &
) print *,104
end
