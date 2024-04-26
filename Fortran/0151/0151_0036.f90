subroutine s1
!$omp parallel
block
parameter (n2=2,n3=3)
integer a01(n2,n3),a02(n2,n3)
character(n3) b01,b02(n2,n3)
if (size(a01)/=6) print *,101
if (size(a02)/=6) print *,102
if (size(b02)/=6) print *,104
if (any(ubound(a01)/=[2,3])) print *,201
if (any(ubound(a02)/=[2,3])) print *,202
if (any(ubound(b02)/=[2,3])) print *,204
if (len(b01)/=3) print *,301
if (len(b02)/=3) print *,302
a01=reshape([(k,k=1,n2*3)],[n2,n3])
a02=reshape([(k,k=1,n2*3)],[n2,n3])+1
b01='123'
b02=reshape([(char(k)//char(k)//char(k),k=1,n2*3)],[n2,n3])
if (any( a01/=reshape([(k,k=1,n2*3)],[n2,n3]) )) print *,301
if (any( a02/=1+reshape([(k,k=1,n2*3)],[n2,n3]) )) print *,302
if (b01/='123') print *,303
if (any(b02/=reshape([(char(k)//char(k)//char(k),k=1,n2*3)],[n2,n3]) )) print *,303
end block
!$omp end parallel
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
