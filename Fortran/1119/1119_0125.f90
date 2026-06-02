  call s1
  call s2
  call s3
  call s4
  call s5
  call s6
  call s7
  call s8
  call s9
  call s10
  print *,'pass'
contains
  subroutine s1
    integer(1)::j
    integer::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2
    j=p
    !$omp end atomic
    if(j/=1) print *,'err1'
    if(p/=1) print *,'err2'
  end subroutine s1
  subroutine s2
    integer(2)::j
    integer::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2
    j=p
    !$omp end atomic
    if(j/=1) print *,'err3'
    if(p/=1) print *,'err4'
  end subroutine s2
  subroutine s3
    integer(4)::j
    integer::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2
    j=p
    !$omp end atomic
    if(j/=1) print *,'err5'
    if(p/=1) print *,'err6'
  end subroutine s3
  subroutine s4
    integer(8)::j
    integer::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2
    j=p
    !$omp end atomic
    if(j/=1) print *,'err7'
    if(p/=1) print *,'err8'
  end subroutine s4
  subroutine s5
    real(4)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/(2.0,0.0)
    j=p
    !$omp end atomic
    if(j/=1.0) print *,'err9'
    if(p/=1) print *,'err10'
  end subroutine s5
  subroutine s6
    real(8)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/(2.0,0.0)
    j=p
    !$omp end atomic
    if(j/=1.0) print *,'err11'
    if(p/=1) print *,'err12'
  end subroutine s6
  subroutine s7
    real(16)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/(2.0,0.0)
    j=p
    !$omp end atomic
    if(j/=1.0) print *,'err13'
    if(p/=1) print *,'err14'
  end subroutine s7
  subroutine s8
    complex(4)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2.0
    j=p
    !$omp end atomic
    if(j/=(1.0,0.0)) print *,'err15'
    if(p/=1) print *,'err16'
  end subroutine s8
  subroutine s9
    complex(8)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2.0_8
    j=p
    !$omp end atomic
    if(j/=(1.0,0.0)) print *,'err17'
    if(p/=1) print *,'err18'
  end subroutine s9
  subroutine s10
    complex(8)::j
    integer(8)::p
    p=2
    j=10
    !$omp atomic capture
    p=p/2.0_16
    j=p
    !$omp end atomic
    if(j/=(1.0,0.0)) print *,'err19'
    if(p/=1) print *,'err20'
  end subroutine s10
end program
