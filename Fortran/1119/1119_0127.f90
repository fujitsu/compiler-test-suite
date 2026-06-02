  call s8
  call s9
  call s10
  print *,'pass'
contains
  subroutine s8
    complex(2)::j
    real(2)::p
    p=2
    j=10
    !$omp atomic capture
    p=p+2.0
    j%im=p
    !$omp end atomic
    if(j/=(10.0,4.0)) print *,'err1'
  end subroutine s8
  subroutine s9
    complex(8)::j
    real(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p+2.0_8
    j%re=p
    !$omp end atomic
    if(j/=(4.0,0.0)) print *,'err2'
  end subroutine s9
  subroutine s10
    complex(8)::j
    real(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p+2.0_16
    j%im=p
    !$omp end atomic
    if(j/=(10.0,4.0)) print *,'err3'
  end subroutine s10
end program
