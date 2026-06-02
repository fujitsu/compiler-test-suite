  call s1
  call s2
  call s3
  call s4
  print *,'pass'
contains
  subroutine s1
    real*2::r2=1.0_2
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_2) print *,'err1'
  end subroutine s1
  subroutine s2
    real*2::r2=1.0_2
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_2) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_2) print *,'err3'
  end subroutine
  subroutine s3
    real*2::r2=1
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_2) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_2) print *,'err3'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_2) print *,'err3'
  end subroutine
  subroutine s4
    real*2::r2=1
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_2) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_2) print *,'err3'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_2) print *,'err3'
    !$omp atomic
    r2=r2+1_8
    if(r2/=5.0_2) print *,'err3'
  end subroutine
  end
