      type xx
        integer,allocatable,dimension(:)::a
      end type

       type(xx),              save :: wk
       type(xx),              save :: ww
!$omp threadprivate(wk,ww)
         allocate(wk%a(1))
       wk%a=1
       ww=wk
       if(wk%a(1)/=1)print *,'error'
       if(ww%a(1)/=1)print *,'error-2'
print *,'pass'
       end
