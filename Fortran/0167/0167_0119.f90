module m
  integer(4) :: a,b,c
  !$omp threadprivate(a,b,c)
  private a,b,c
contains
  subroutine threadprivate_check
    integer(8),allocatable :: addr(:)
    integer omp_get_max_threads, omp_get_thread_num
    allocate(addr(omp_get_max_threads()))
    !$omp parallel
    addr(omp_get_thread_num()+1) = loc(a)
    !$omp end parallel
    do i=1,omp_get_max_threads()-1
       if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
    end do

    !$omp parallel
    addr(omp_get_thread_num()+1) = loc(b)
    !$omp end parallel
    do i=1,omp_get_max_threads()-1
       if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
    end do
    
    !$omp parallel
    addr(omp_get_thread_num()+1) = loc(c)
    !$omp end parallel
    do i=1,omp_get_max_threads()-1
       if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
    end do

  end subroutine
  subroutine set
    a=11
    b=22
    c=33
  end subroutine
  subroutine check
    if (a /= 11) print *,3
    if (b /= 22) print *,4
    if (c /= 33) print *,5
  end subroutine
end

use m
call threadprivate_check
call set
call check
print *,'pass'
end

