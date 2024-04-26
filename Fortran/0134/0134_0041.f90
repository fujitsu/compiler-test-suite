subroutine s1
integer,volatile:: x1,x2(2) 
x1=1
x2(1)=2
if (x1/=1)print *,101
if (x2(1)/=2)print *,102
end
call s1
call s2
call s3
print *,'pass'
end
subroutine s2
integer,asynchronous:: x1,x2(2) 
x1=1
x2(1)=2
if (x1/=1)print *,101
if (x2(1)/=2)print *,102
end
subroutine s3
integer,asynchronous:: x1,x2(2) 
x1=1
x2(1)=2
!$omp parallel private(x1,x2) 
!$omp end parallel
if (x1/=1)print *,101
if (x2(1)/=2)print *,102
end
