call s1
call s2
print *,'pass'
end program
subroutine s1
complex::a
complex::b(2)
equivalence(a,b)
a=-1
b=100
!$omp atomic read
a%re=b(1)%im
!$omp atomic write
b(1)%im=a%re
!$omp atomic write
b(1)%re=b(1)%re
!$omp atomic capture
b(1)%im=a%im
a%im=b(1)%re
!$omp end atomic

end

subroutine s2
complex::a
complex::b(2)
common//a,b
a=-1
b=100
!$omp atomic read
a%re=b(1)%im
!$omp atomic write
b(1)%re=a%im
!$omp atomic write
b(1)%re=b(1)%re
!$omp atomic capture
b(1)%re=a%im
a%im=b(1)%re
!$omp end atomic

end
