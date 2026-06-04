  character(5),parameter,dimension(1:*)::ch=(/"1","2","3","4","5"/)
  call sss(ch)
contains
  subroutine sss(ch)
    character(*)::ch(:)
    !$omp task depend(out:ch)
    !$omp task depend(in:ch(0))
    !$omp task depend(in:ch(1:1)(0:-1))
    !$omp task depend(inout:ch(0:0)(-1:-2))
if(any(ch/=(/"1","2","3","4","5"/))) print *,'err1'
    !$omp end task 
if(any(ch/=(/"1","2","3","4","5"/))) print *,'err2'
    !$omp end task 
if(any(ch/=(/"1","2","3","4","5"/))) print *,'err3'
    !$omp end task 
if(any(ch/=(/"1","2","3","4","5"/))) print *,'err4'
    !$omp end task 
  end subroutine sss
end program

    
