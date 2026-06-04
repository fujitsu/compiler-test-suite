module mm
common /com/ i1,i2,i3
!$OMP threadprivate(/com/)
contains
subroutine s1
call s11
call s12
i3=15; if (i3/=15)print *,"fail"
!$OMP parallel 
i3=2
!$OMP end parallel
contains
subroutine s11
i2=11; if (i2/=11)print *,"fail"
!$OMP parallel
i2=21
if (i2/=21)print *,"fail"
!$OMP end parallel
end subroutine
subroutine s12
i2=31;if (i2/=31)print *,"fail"
!$OMP parallel
i2=21
!$OMP end parallel
end subroutine
end subroutine
subroutine s2
call s21
call s22
i3=1;if (i3/=1)print *,"fail"
!$OMP parallel
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
contains
subroutine s21
i3=2;if (i3/=2)print *,"fail"
!$OMP parallel
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
end subroutine
subroutine s22
i3=2;if (i3/=2)print *,"fail"
!$OMP parallel
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
end subroutine
end subroutine
end
use mm
i1=2;if (i1/=2)print *,"fail"
call s1
call s2
call s111
call s112
!$OMP parallel
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
print *,'pass'
contains
subroutine s111
i3=2;if (i3/=2)print *,"fail"
!$OMP parallel
i2=21
!$OMP end parallel
end subroutine
subroutine s112
i3=2;if (i3/=2)print *,"fail"
!$OMP parallel
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
end subroutine
end
