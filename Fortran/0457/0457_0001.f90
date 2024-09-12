call omp_set_num_threads(1)
!$omp parallel
n2=2
n3=3
block
character(n3) b01,b02(n2,n3)
n2=-2
n3=-3
if (size(b02)/=6) print *,104
if (any(ubound(b02)/=[2,3])) print *,204
if (len(b01)/=3) print *,301
if (len(b02)/=3) print *,302
b01='123'
b02=reshape([(char(k)//char(k)//char(k),k=1,2*3)],[2,3])
if (b01/='123') print *,303
if (any(b02/=reshape([(char(k)//char(k)//char(k),k=1,2*3)],[2,3]) )) print *,303
end block
if (n2/=-2) print *,901
if (n3/=-3) print *,902
!$omp end parallel
print *,'pass'
end
