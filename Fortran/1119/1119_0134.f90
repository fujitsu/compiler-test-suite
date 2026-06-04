  call s1
  call s2
  call s3
  call s4
  call s5
  call s6
  print *,'pass'
contains
  subroutine s1
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err1'
  end subroutine s1
  subroutine s2
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_8) print *,'err3'
  end subroutine
  subroutine s3
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err4'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_8) print *,'err5'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_8) print *,'err6'
  end subroutine
  subroutine s4
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err7'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_8) print *,'err8'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_8) print *,'err9'
    !$omp atomic
    r2=r2+1_8
    if(r2/=5.0_8) print *,'err10'
    !$omp atomic
    r2=r2+1.0_2
    if(r2/=6.0_8) print *,'err11'
  end subroutine
  subroutine s5
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1_8
    if(r2/=5.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1.0_2
    if(r2/=6.0_8) print *,'err3'
  end subroutine
  subroutine s6
    real*8::r2=1.0_8
    !$omp atomic
    r2=r2+1_1
    if(r2/=2.0_8) print *,'err2'
    !$omp atomic
    r2=r2+1_2
    if(r2/=3.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1_4
    if(r2/=4.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1_8
    if(r2/=5.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1.0_2
    if(r2/=6.0_8) print *,'err3'
    !$omp atomic
    r2=r2+1.0_4
    if(r2/=7.0_8) print *,'err3'
  end subroutine
  end
