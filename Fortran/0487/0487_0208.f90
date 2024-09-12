complex ::b(1)=0
print *,'pass'
contains

  subroutine foo1()
complex a
    !$omp simd private(b)
    do i=1,1
       a = b(1)
    end do
  end subroutine

end
