subroutine s
      COMMON /ARRAY/FD
      EQUIVALENCE (TD,YD,WD)
      EQUIVALENCE (TE,YE,WE)
      EQUIVALENCE (TF,YF,WF)
      EQUIVALENCE (FD,XD)
      EQUIVALENCE (WE,XD,YE)
      EQUIVALENCE (WE,XF)
!$omp parallel firstprivate(/ARRAY/)
!$omp end parallel
end subroutine
call s
print *,'pass'
END
