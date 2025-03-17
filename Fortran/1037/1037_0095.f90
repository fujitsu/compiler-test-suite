subroutine s01(n)
implicit integer(i-p)
integer(8) i
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i=1;j=2;k(2)=2;x%zz=2
!$omp atomic
i=j+i
if (i/=3)print *,'error-01';i=1
!$omp atomic
i=n+i
if (i/=3)print *,'error-02';i=1
!$omp atomic
i=2+i
if (i/=3)print *,'error-03';i=1
!$omp atomic
i=K(2)+i
if (i/=3)print *,'error-04';i=1
!$omp atomic
i=p+i
if (i/=3)print *,'error-05';i=1
!$omp atomic
i=k(2)+k(2)-k(2)+i
if (i/=3)print *,'error-06';i=1
!$omp atomic
i=if()+i
if (i/=3)print *,'error-07';i=1
!$omp atomic
i=x%zz+i
if (i/=3)print *,'error-08';i=1
end
subroutine s02(i,n)
implicit integer(i-p)
integer(8) i
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i=1;j=2;k(2)=2;x%zz=2
!$omp atomic
i=j+i
if (i/=3)print *,'error-11';i=1
!$omp atomic
i=n+i
if (i/=3)print *,'error-12';i=1
!$omp atomic
i=2+i
if (i/=3)print *,'error-13';i=1
!$omp atomic
i=K(2)+i
if (i/=3)print *,'error-14';i=1
!$omp atomic
i=p+i
if (i/=3)print *,'error-15';i=1
!$omp atomic
i=k(2)+k(2)-k(2)+i
if (i/=3)print *,'error-16';i=1
!$omp atomic
i=if()+i
if (i/=3)print *,'error-17';i=1
i=x%zz+i
if (i/=3)print *,'error-18';i=1
end
subroutine s03(n)
implicit integer(i-p)
integer(8) i
dimension k(2),i(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i(2)=1;j=2;k(2)=2;x%zz=2
!$omp atomic
i(2)=j+i(2)
if (i(2)/=3)print *,'error-21';i(2)=1
!$omp atomic
i(2)=n+i(2)
if (i(2)/=3)print *,'error-22';i(2)=1
!$omp atomic
i(2)=2+i(2)
if (i(2)/=3)print *,'error-23';i(2)=1
!$omp atomic
i(2)=K(2)+i(2)
if (i(2)/=3)print *,'error-24';i(2)=1
!$omp atomic
i(2)=p+i(2)
if (i(2)/=3)print *,'error-25';i(2)=1
!$omp atomic
i(2)=k(2)+k(2)-k(2)+i(2)
if (i(2)/=3)print *,'error-26';i(2)=1
!$omp atomic
i(2)=if()+i(2)
if (i(2)/=3)print *,'error-27';i(2)=1
!$omp atomic
i(2)=x%zz+i(2)
if (i(2)/=3)print *,'error-28';i(2)=1
end
subroutine s04(n)
implicit integer(i-p)
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; integer(8) i;end type; type(z)::x
x%i=1;j=2;k(2)=2;x%zz=2
!$omp atomic
x%i=j+x%i
if (x%i/=3)print *,'error-31';x%i=1
!$omp atomic
x%i=n+x%i
if (x%i/=3)print *,'error-32';x%i=1
!$omp atomic
x%i=2+x%i
if (x%i/=3)print *,'error-33';x%i=1
!$omp atomic
x%i=K(2)+x%i
if (x%i/=3)print *,'error-34';x%i=1
!$omp atomic
x%i=p+x%i
if (x%i/=3)print *,'error-35';x%i=1
!$omp atomic
x%i=k(2)+k(2)-k(2)+x%i
if (x%i/=3)print *,'error-36';x%i=1
!$omp atomic
x%i=if()+x%i
if (x%i/=3)print *,'error-37';x%i=1
!$omp atomic
x%i=x%zz+x%i
if (x%i/=3)print *,'error-38';x%i=1
end
function if()
if=2
end
integer(8) i
call s01(2)
call s02(i,2)
call s03(2)
call s04(2)
print *,'pass'
end
