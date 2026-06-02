call s1
call s2
call s3
print *, 'pass'
end
subroutine s1
integer(1)::i1(3)
integer(2)::i2(3)
integer(4)::i4(3)
integer(8)::i8(3)
i2=0
i4=1
i8=1
!$omp task
do 10,concurrent(i=1:3)
!$omp atomic capture
i1(i)=i2(i)
i2(i)=i2(i)+(i4(i)+i8(i))
!$omp end atomic
if(i1(i)/=0) print *,'err1'
if(i2(i)/=2) print *,'err2'
!$omp atomic capture
i2(i)=i2(i)+(i4(i)+i8(i))
i1(i)=i2(i)
!$omp end atomic
if(i2(i)/=i1(i)) print *,'err3'
!$omp  taskyield
10 end do
!$omp  end task
end
subroutine s2
integer(1)::i1(2),x
i1=-1
!$omp atomic capture
x=i1(1)
i1(1) = iand(i1(1),i1(2)+i1(2))
!$omp end atomic
if(x/=i1(2)) print *,'err'
!$omp atomic capture
i1(1) = iand(i1(1),i1(2)+i1(2))
x=i1(1)
!$omp end atomic
if(x/=i1(1)) print *,'err'
end
subroutine s3
integer(2)::i1(2),x
i1=-1
!$omp atomic capture
x=i1(1)
i1(1) = ior(i1(1),i1(2)+i1(2))
!$omp end atomic
if(x/=i1(2)) print *,'err'
!$omp atomic capture
i1(1) = ieor(i1(1),i1(2)+i1(2))
x=i1(1)
!$omp end atomic
if(x/=i1(1)) print *,'err'
end