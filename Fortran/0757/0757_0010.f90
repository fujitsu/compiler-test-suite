subroutine s11
common /cmn1/ k
!$omp threadprivate (/cmn1/)
k=1
call s12
end

subroutine s12
common /cmn1/ k
k=1
end

subroutine s21
common /cmn2/ k
k=1
call s22
end

subroutine s22
common /cmn2/ k
!$omp threadprivate (/cmn2/)
k=1
end

 call s11
 call s12
print *,'pass'
end
