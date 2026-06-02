  call s1
  call s2
  call s3
  print *,'pass'
contains
  subroutine s1
    integer*2::i2=1
    !$omp atomic
    i2=i2+1_1
    if(i2/=2) print *,'err1'
  end subroutine s1
  subroutine s2
    integer*4::i4=1
    !$omp atomic
    i4=i4+1_1
    if(i4/=2) print *,'err2'
    !$omp atomic
    i4=i4+1_2
    if(i4/=3) print *,'err3'
  end subroutine
  subroutine s3
    integer*8::i8=1
    !$omp atomic
    i8=i8+1_1
    if(i8/=2) print *,'err2'
    !$omp atomic
    i8=i8+1_2
    if(i8/=3) print *,'err3'
    !$omp atomic
    i8=i8+1_4
    if(i8/=4) print *,'err3'
  end subroutine
  end
