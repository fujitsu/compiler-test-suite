  call s1
  call s2
  call s3
  call s4
  print *,'pass'
contains
  subroutine s1
    complex(4)::aaa
  integer(1)::bbb , ccc
  aaa=1
  bbb=2
  !$omp atomic capture
  bbb=bbb+aaa%im
  ccc=bbb
  !$omp end atomic
  if(ccc/=2) print *,'err1' 
end subroutine
  subroutine s2
    complex(4)::aaa
  integer(1)::bbb , ccc
  aaa=1
  bbb=2
  !$omp atomic capture
  bbb=aaa%im+bbb
  ccc=bbb
  !$omp end atomic
  if(ccc/=2) print *,'err2' 
end subroutine
  subroutine s3
    complex(4)::aaa
  integer(1)::bbb , ccc
  aaa=1
  bbb=2
  !$omp atomic capture
  ccc=bbb
  bbb=bbb+aaa%im
  !$omp end atomic
  if(ccc/=2) print *,'err3' ,ccc
end subroutine
  subroutine s4
    complex(4)::aaa
  integer(1)::bbb , ccc
  aaa=1
  bbb=2
  !$omp atomic capture
  ccc=bbb
  bbb=aaa%im+bbb
  !$omp end atomic
  if(ccc/=2) print *,'err4',ccc 
end subroutine
end program
