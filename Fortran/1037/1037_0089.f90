subroutine s02(i,n)
implicit integer(i-p)
integer(8) i
dimension k(2)
parameter (p=2)
type z;sequence; integer zz; end type; type(z)::x
i=1;j=2;k(2)=2;x%zz=2
!$omp atomic
i=ior(i,j)
if (i/=3)print *,'error-11';i=1
!$omp atomic
i=ior(i,n)
if (i/=3)print *,'error-12';i=1
!$omp atomic
i=ior(i,2)
if (i/=3)print *,'error-13';i=1
!$omp atomic
i=ior(i,K(2))
if (i/=3)print *,'error-14';i=1
!$omp atomic
i=ior(i,p)
if (i/=3)print *,'error-15';i=1
!$omp atomic
i=ior(i,k(2)+k(2)-k(2))
if (i/=3)print *,'error-16';i=1
!$omp atomic
i=ior(i,if())
if (i/=3)print *,'error-17';i=1
i=ior(i,x%zz)
if (i/=3)print *,'error-18';i=1
end
function if()
if=2
end
integer(8) i
call s02(i,2)
print *,'pass'
end
