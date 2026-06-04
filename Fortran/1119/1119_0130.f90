  call s1
  call s2
  call s3
  call s4
 print *,'pass'
contains
  subroutine s1
  integer*1::x
     real(4)::v
     x=2
     v=10
     !$omp atomic capture
     v=(2.0,0.0)*v
     x=v
     !$omp end atomic
     if(v/=20.0) print *,'err1',v
     if(x/=20) print *,'err2',x
   end subroutine s1
  subroutine s2
  integer*2::x
     real(4)::v
     x=2
     v=10
     !$omp atomic capture
     v=(2.0,0.0)*v
     x=v
     !$omp end atomic
     if(v/=20.0) print *,'err3',v
     if(x/=20) print *,'err4',x
   end subroutine
  subroutine s3
  integer*4::x
     real(4)::v
     x=2
     v=10
     !$omp atomic capture
     v=(2.0,0.0)*v
     x=v
     !$omp end atomic
     if(v/=20.0) print *,'err5',v
     if(x/=20) print *,'err6',x
   end subroutine
  subroutine s4
  integer*8::x
     real(4)::v
     x=2
     v=10
     !$omp atomic capture
     v=(2.0,0.0)*v
     x=v
     !$omp end atomic
     if(v/=20.0) print *,'err7',v
     if(x/=20) print *,'err8',x
   end subroutine
 end
