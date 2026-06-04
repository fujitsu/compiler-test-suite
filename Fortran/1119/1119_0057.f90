call s1
call s2
print *,'pass'
end program
subroutine s1
integer::a
integer::b(2)
equivalence(a,b)
a=-1
b=100
!$omp atomic read
a=b(1)
!$omp atomic write
b(1)=a
!$omp atomic write
b(1)=b(1)
!$omp atomic capture
b(1)=a
a=b(1)
!$omp end atomic

end

subroutine s2
integer::a
integer::b(2)
common//a,b
a=-1
b=100
!$omp atomic read
a=b(1)
!$omp atomic write
b(1)=a
!$omp atomic write
b(1)=b(1)
!$omp atomic capture
b(1)=a
a=b(1)
!$omp end atomic

end
