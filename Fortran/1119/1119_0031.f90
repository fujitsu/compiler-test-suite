call s1
call s2
print *,'pass'
end
subroutine s1
type :: str
complex :: i=1
end type str
type(str)::ttt
complex::k=-1
complex::j
j=0
!$omp atomic capture
k%re=j%re
j%re= conjg(ttt%i)
!$omp end atomic
if(j/=1) print *,'err1',j
if(k/=0) print *,'err2'
end
subroutine s2
complex::i,j
i=0
!$omp atomic capture
j%im=i%im
i%im=conjg(i)
!$omp end atomic
if(i/=0) print *,'err3',i
if(j%im/=0) print *,'err4'
end
