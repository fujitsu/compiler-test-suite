subroutine s1
      type xx
        integer,allocatable,dimension(:)::a
      end type

       type(xx),              save :: wk
       type(xx),              save :: ww
!$omp threadprivate(wk,ww)
         allocate(ww%a(1),source=-1)
         allocate(wk%a(1))
       wk%a=1
       ww=wk
       if(wk%a(1)/=1)print *,'error'
       if(ww%a(1)/=1)print *,'error-2'
deallocate (wk%a,ww%a)
end
do k=1,10
call s1
end do
print *,'pass'
       end
