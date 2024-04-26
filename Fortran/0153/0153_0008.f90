subroutine s1
implicit none
integer::k1,k2,k
integer,parameter::a(127)=[(k,k=1,127)]
integer,parameter::b(127)=[(k,k=1,127)]
logical,parameter::c(127,127)= reshape( [ (( LGT( achar(a(k1)) ,achar(b(k2)) ), k1=1,127), k2=1,127)],[127,127])
logical::d(127,127)

do k2=1,127
do k1=1,127
  d(k1,k2)= LGT( achar(a(k1)) ,achar(b(k2)) )
end do
end do
if (any(c.neqv.d)) print *,101
end
call s1
print *,'pass'
end
