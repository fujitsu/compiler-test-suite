subroutine s01(n)
implicit integer(i-p)
dimension k(2)
parameter (p=3)
type z;sequence; integer zz; end type; type(z)::x
i=1;j=3;k(2)=3;x%zz=3
!$omp atomic
i=max(j,i)
if (i/=3)print *,'error-01';i=1
!$omp atomic
i=max(n,i)
if (i/=3)print *,'error-02';i=1
!$omp atomic
i=max(3,i)
if (i/=3)print *,'error-03';i=1
!$omp atomic
i=max(K(2),i)
if (i/=3)print *,'error-04';i=1
!$omp atomic
i=max(p,i)
if (i/=3)print *,'error-05';i=1
!$omp atomic
i=max(k(2)+k(2)-k(2),i)
if (i/=3)print *,'error-06';i=1
!$omp atomic
i=max(if(),i)
if (i/=3)print *,'error-07';i=1
!$omp atomic
i=max(x%zz,i)
if (i/=3)print *,'error-08';i=1
end
subroutine s02(i,n)
implicit integer(i-p)
dimension k(2)
parameter (p=3)
type z;sequence; integer zz; end type; type(z)::x
i=1;j=3;k(2)=3;x%zz=3
!$omp atomic
i=max(j,i)
if (i/=3)print *,'error-11';i=1
!$omp atomic
i=max(n,i)
if (i/=3)print *,'error-12';i=1
!$omp atomic
i=max(3,i)
if (i/=3)print *,'error-13';i=1
!$omp atomic
i=max(K(2),i)
if (i/=3)print *,'error-14';i=1
!$omp atomic
i=max(p,i)
if (i/=3)print *,'error-15';i=1
!$omp atomic
i=max(k(2)+k(2)-k(2),i)
if (i/=3)print *,'error-16';i=1
!$omp atomic
i=max(if(),i)
if (i/=3)print *,'error-17';i=1
i=max(x%zz,i)
if (i/=3)print *,'error-18';i=1
end
subroutine s03(n)
implicit integer(i-p)
dimension k(2),i(2)
parameter (p=3)
type z;sequence; integer zz; end type; type(z)::x
i(2)=1;j=3;k(2)=3;x%zz=3
!$omp atomic
i(2)=max(j,i(2))
if (i(2)/=3)print *,'error-21';i(2)=1
!$omp atomic
i(2)=max(n,i(2))
if (i(2)/=3)print *,'error-22';i(2)=1
!$omp atomic
i(2)=max(3,i(2))
if (i(2)/=3)print *,'error-23';i(2)=1
!$omp atomic
i(2)=max(K(2),i(2))
if (i(2)/=3)print *,'error-24';i(2)=1
!$omp atomic
i(2)=max(p,i(2))
if (i(2)/=3)print *,'error-25';i(2)=1
!$omp atomic
i(2)=max(k(2)+k(2)-k(2),i(2))
if (i(2)/=3)print *,'error-26';i(2)=1
!$omp atomic
i(2)=max(if(),i(2))
if (i(2)/=3)print *,'error-27';i(2)=1
!$omp atomic
i(2)=max(x%zz,i(2))
if (i(2)/=3)print *,'error-28';i(2)=1
end
subroutine s04(n)
implicit integer(i-p)
dimension k(2)
parameter (p=3)
type z;sequence; integer zz; integer i;end type; type(z)::x
x%i=1;j=3;k(2)=3;x%zz=3
!$omp atomic
x%i=max(j,x%i)
if (x%i/=3)print *,'error-31';x%i=1
!$omp atomic
x%i=max(n,x%i)
if (x%i/=3)print *,'error-32';x%i=1
!$omp atomic
x%i=max(3,x%i)
if (x%i/=3)print *,'error-33';x%i=1
!$omp atomic
x%i=max(K(2),x%i)
if (x%i/=3)print *,'error-34';x%i=1
!$omp atomic
x%i=max(p,x%i)
if (x%i/=3)print *,'error-35';x%i=1
!$omp atomic
x%i=max(k(2)+k(2)-k(2),x%i)
if (x%i/=3)print *,'error-36';x%i=1
!$omp atomic
x%i=max(if(),x%i)
if (x%i/=3)print *,'error-37';x%i=1
!$omp atomic
x%i=max(x%zz,x%i)
if (x%i/=3)print *,'error-38';x%i=1
end
function if()
if=3
end
call s01(3)
call s02(i,3)
call s03(3)
call s04(3)
print *,'pass'
end
