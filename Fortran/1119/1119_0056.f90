integer(1)::i1,i2,i3,i4,i5,fun
integer(2)::ii1,ii2,ii3,ii4,ii5
i1=1
!$omp atomic capture
ii1=i1
i1=kind([integer*1::+1])
!$omp end atomic

i2=1
!$omp atomic capture
ii2=i2
i2=kind([integer(1)::+1])
!$omp end atomic

i3=1
!$omp atomic capture
ii3=i3
i3=kind([integer(kind=1)::+1])
!$omp end atomic

i4=1
!$omp atomic capture
ii4=i4
i4=len([character(1)::" "])
!$omp end atomic

i5=1
!$omp atomic capture
ii5=i5
i5=fun((/integer(1)::1/))
!$omp end atomic

print *,'pass'
end

integer*1 function fun(j) result(i)
  integer(1):: j(1)
  i=1
end
