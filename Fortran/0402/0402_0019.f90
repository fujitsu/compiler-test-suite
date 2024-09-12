module m0
common /cmn0/ n0
!$omp threadprivate(/cmn0/)
end
module m1
common /cmn1/ n1
end
module m2
!$omp threadprivate(/cmn2/)
common /cmn2/ n2
end
print *,'pass'
end
