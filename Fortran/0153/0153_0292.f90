module m1
integer,pointer:: n2,k2
common /cmn/ n1,n2,n3
save::k1,k2
!$omp threadprivate( k1 , /cmn/, k2)
end
subroutine s1
use m1
integer,pointer:: n12,k12
common /cmn2/ n11,n12,n13
save::k11,k12
!$omp threadprivate( k11 ,  k12,/cmn2/)
k1=101+0
n1=201+0
allocate(n2,k2)
n2=202+0
k2=102+0
n3=203+0
k11=111+0
n11=211+0
allocate(n12,k12)
n12=212+0
k12=112+0
n13=213+0
!$omp parallel copyin(k1 , n1,n2,n3, k2 , k11,n11,n12,n13 ,k12)
write(1,'(a,z16.16)') 'k1  ',loc(k1)
write(1,'(a,z16.16)') 'k2  ',loc(k2)
write(1,'(a,z16.16)') 'n1 ',loc(n1)
write(1,'(a,z16.16)') 'n2 ',loc(n2)
write(1,'(a,z16.16)') 'n3 ',loc(n3)
if (k1/=101+0) print *,101
if (k2/=102+0) print *,102
if (n1/=201+0) print *,201
if (n2/=202+0) print *,202
if (n3/=203+0) print *,203
write(1,'(a,z16.16)') 'k11  ',loc(k11)
write(1,'(a,z16.16)') 'k12  ',loc(k12)
write(1,'(a,z16.16)') 'n11 ',loc(n11)
write(1,'(a,z16.16)') 'n12 ',loc(n12)
write(1,'(a,z16.16)') 'n13 ',loc(n13)
if (k11/=111+0) print *,111
if (k12/=112+0) print *,112
if (n11/=211+0) print *,211
if (n12/=212+0) print *,212
if (n13/=213+0) print *,213
call ss(k11,k12)
!$omp end parallel
end
call s1
print *,'pass'
end
subroutine ss(k11,k12)
use m1
integer,pointer:: n12
common /cmn2/ n11,n12,n13
!$omp threadprivate(  /cmn2/)
if (k1/=101+0) print *,3101
if (k2/=102+0) print *,3102
if (n1/=201+0) print *,3201
if (n2/=202+0) print *,3202
if (n3/=203+0) print *,3203
if (k11/=111+0) print *,3101
if (k12/=112+0) print *,3102
if (n11/=211+0) print *,3201
if (n12/=212+0) print *,3202
if (n13/=213+0) print *,3203
end
