call s1
call s2
print *,'pass'
end
subroutine s1
integer::i,j
i=-1
j=20
!$omp atomic capture
i=j
j=-100
!$omp end atomic
if(i/=20) print *,'err1'
if(j/=-100) print *,'err2'
end
subroutine s2
integer::i(2)
i=[-1,-2]
!$omp atomic capture
i(1)=i(2)
i(2)=-100
!$omp end atomic
if(i(1)/=-2) print *,'err3'
if(i(2)/=-100) print *,'err4'
end


