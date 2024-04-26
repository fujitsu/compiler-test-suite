module m1
 common /cmn_mod/ k1
 !$omp threadprivate (/cmn_mod/,k2)
end

subroutine s1
 common /cmn/ n1
 save n2
 !$omp threadprivate (/cmn/,n2)
 n1=1
 if (n1/=1) print *,101
 n2=1
 if (n2/=1) print *,102
end

subroutine s2
 use m1
 common /cmn_mod/ j1
 !$omp threadprivate (/cmn_mod/)
 j1=1
 if (k1/=1) print *,201
 if (j1/=1) print *,203
 k2=1
 if (k2/=1) print *,202
end
call s1
call s2
print *,'pass'
end
