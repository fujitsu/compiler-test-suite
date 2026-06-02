module mm
common /com/ i1,i2,i3
!$OMP threadprivate(/com/)
contains
subroutine s1
i3=2;if (i3/=2)print *,"fail"
call s11
call s12
!$OMP parallel private(jj) 
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
contains
subroutine s11
i3=2;if (i3/=2)print *,"fail"
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i3=2;if (i3/=2)print *,"fail"
!$OMP end parallel
end subroutine
subroutine s12
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP end parallel
end subroutine
end subroutine
subroutine s2
call s21
call s22
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP end parallel
contains
subroutine s21
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP end parallel
end subroutine
subroutine s22
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
jj=1;if (jj/=1) print *,"fail"
!$OMP end parallel
end subroutine
end subroutine
end
use mm
i1=1
call s1
call s2
call s111
call s112
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i1=2
!$OMP end parallel
print *,'pass'
contains
subroutine s111
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
jj=1;if (jj/=1) print *,"fail"
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP end parallel
end subroutine
subroutine s112
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP parallel private(jj)
i3=2;if (i3/=2)print *,"fail"
i2=21;if (i2/=21)print *,"fail"
!$OMP end parallel
end subroutine
end
