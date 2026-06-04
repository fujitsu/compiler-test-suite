call s1
call s2
print *,'pass'
end
subroutine s1
  complex::i,j
i%re=-1
i%im=-1
j%re=20
j%im=20
!$omp atomic capture
i%re=j%im
j%im=-100
!$omp end atomic
if(i/=(20.0000000,-1.00000000)) print *,'err1',i
if(j/=(20.0000000,-100.000000)) print *,'err2',j
end
subroutine s2
complex::i(2)
i%re=[-1,-2]
i%im=[-1,-2]
!$omp atomic capture
i(1)%re=i(2)%im
i(2)%im=-100
!$omp end atomic
if(i(1)/=(-2.00000000,-1.00000000)) print *,'err3',i(1)
if(i(2)/= (-2.00000000,-100.000000)) print *,'err4',i(2)
end
