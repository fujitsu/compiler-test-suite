call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
  complex(2 ) :: aaa(1)=1
  complex(4 ) :: bbb(1)=2
  complex(8 ) :: ccc(1)
!$omp atomic capture seq_cst
  ccc(1) =aaa(1)
  aaa(1) = aaa(1) - bbb(1)
!$omp end atomic
if(aaa(1)/= (-1.00000000,0.00000000E+00)) print *,'err1'
if(ccc(1) /= (1.000000000000000,0.000000000000000E+00)) print *,'err2'
end subroutine s1
subroutine s2
real(2 ) :: aaa(1)=1
complex(4 ) :: bbb(1)=2
complex(8 ) :: ccc(1)
!$omp atomic capture seq_cst
ccc(1) =  aaa(1)
aaa(1) =  aaa(1) - bbb(1)
!$omp end atomic
if(aaa(1)/= -1.00000000) print *,'err3'
if(ccc(1) /= (1.000000000000000,0.000000000000000E+00)) print *,'err4'
end subroutine s2
subroutine s3
complex(2 ) :: aaa(1)=1
complex(4 ) :: bbb(1)=2
real(2 ) :: ccc(1)
!$omp atomic capture seq_cst
ccc(1)= aaa(1)
aaa(1) = aaa(1) - bbb(1)
!$omp end atomic
if(aaa(1)/= (-1.00000000,0.00000000E+00)) print *,'err5'
if(ccc(1) /= 1.000000000000000) print *,'err6'
end subroutine s3
end
