subroutine s01(n)
implicit integer(i-p)
integer(8) i
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i=3;j=2;k(2)=2;x%zz=2
j1=-1;j2=-2;j3=-3
!$omp atomic
i=max(j1,j2,j3,i,j)
if (i/=3)print *,'error-01';i=3
!$omp atomic
i=max(j1,j2,j3,i,n)
if (i/=3)print *,'error-02';i=3
!$omp atomic
i=max(j1,j2,j3,i,2)
if (i/=3)print *,'error-03';i=3
!$omp atomic
i=max(j1,j2,j3,i,K(2))
if (i/=3)print *,'error-04';i=3
!$omp atomic
i=max(j1,j2,j3,i,p)
if (i/=3)print *,'error-05';i=3
!$omp atomic
i=max(j1,j2,j3,i,k(2)+k(2)-k(2))
if (i/=3)print *,'error-06';i=3
!$omp atomic
i=max(j1,j2,j3,i,if())
if (i/=3)print *,'error-07';i=3
!$omp atomic
i=max(j1,j2,j3,i,x%zz)
if (i/=3)print *,'error-08';i=3
end
subroutine s02(i,n)
implicit integer(i-p)
integer(8) i
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i=3;j=2;k(2)=2;x%zz=2
j1=-1;j2=-2;j3=-3
!$omp atomic
i=max(j1,j2,j3,i,j)
if (i/=3)print *,'error-11';i=3
!$omp atomic
i=max(j1,j2,j3,i,n)
if (i/=3)print *,'error-12';i=3
!$omp atomic
i=max(j1,j2,j3,i,2)
if (i/=3)print *,'error-13';i=3
!$omp atomic
i=max(j1,j2,j3,i,K(2))
if (i/=3)print *,'error-14';i=3
!$omp atomic
i=max(j1,j2,j3,i,p)
if (i/=3)print *,'error-15';i=3
!$omp atomic
i=max(j1,j2,j3,i,k(2)+k(2)-k(2))
if (i/=3)print *,'error-16';i=3
!$omp atomic
i=max(j1,j2,j3,i,if())
if (i/=3)print *,'error-17';i=3
i=max(j1,j2,j3,i,x%zz)
if (i/=3)print *,'error-18';i=3
end
subroutine s03(n)
implicit integer(i-p)
integer(8) i
dimension k(2),i(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i(2)=3;j=2;k(2)=2;x%zz=2
j1=-1;j2=-2;j3=-3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),j)
if (i(2)/=3)print *,'error-21';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),n)
if (i(2)/=3)print *,'error-22';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),2)
if (i(2)/=3)print *,'error-23';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),K(2))
if (i(2)/=3)print *,'error-24';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),p)
if (i(2)/=3)print *,'error-25';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),k(2)+k(2)-k(2))
if (i(2)/=3)print *,'error-26';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),if())
if (i(2)/=3)print *,'error-27';i(2)=3
!$omp atomic
i(2)=max(j1,j2,j3,i(2),x%zz)
if (i(2)/=3)print *,'error-28';i(2)=3
end
subroutine s04(n)
implicit integer(i-p)
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; integer(8) i;end type; type(z)::x
x%i=3;j=2;k(2)=2;x%zz=2
j1=-1;j2=-2;j3=-3
!$omp atomic
x%i=max(j1,j2,j3,x%i,j)
if (x%i/=3)print *,'error-31';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,n)
if (x%i/=3)print *,'error-32';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,2)
if (x%i/=3)print *,'error-33';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,K(2))
if (x%i/=3)print *,'error-34';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,p)
if (x%i/=3)print *,'error-35';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,k(2)+k(2)-k(2))
if (x%i/=3)print *,'error-36';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,if())
if (x%i/=3)print *,'error-37';x%i=3
!$omp atomic
x%i=max(j1,j2,j3,x%i,x%zz)
if (x%i/=3)print *,'error-38';x%i=3
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
