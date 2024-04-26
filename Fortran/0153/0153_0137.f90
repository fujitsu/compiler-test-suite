subroutine s1
integer(8):: p1,p2,p3
common /cmn/ n1,n2
integer,save::k
k=101
n1=201
n2=202
p1=loc(k)
p2=loc(n1)
p3=loc(n2)

!$omp parallel private(k , /cmn/)
write(1,'(a,z16.16)') 'k  ',loc(k)
write(1,'(a,z16.16)') 'n1 ',loc(n1)
write(1,'(a,z16.16)') 'n2 ',loc(n2)
if (p1==loc(k)) print *,10011
if (p2==loc(n1)) print *,10021
if (p3==loc(n2)) print *,10031
!$omp end parallel
end
call s1
print *,'pass'
end
