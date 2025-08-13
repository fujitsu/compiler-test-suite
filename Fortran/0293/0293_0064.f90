subroutine s1(n1,n2)
integer(2) n2(2)
write(51,*)n2(2)
r=n2(2)
r=n1
write(51,*)r
!$omp parallel firstprivate(n2)
write(51,*) n2(2)
!$omp end parallel
end
integer(2) n2(2)
n2(2)=1
call s1(1,n2)
print *,'pass'
end
