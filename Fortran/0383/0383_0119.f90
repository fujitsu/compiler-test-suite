subroutine s1
  interface 
    function n()
    end function
    function k()
    end function
  end interface 
  procedure(n),pointer::p
  p=>n
  if (p()/=1) print *,'fail'
!$omp parallel private(p)
  p=> k
  if (p() /= 2) print *,'fail'
!$omp end parallel
  if (p()/=1) print *,'fail'
end subroutine

call s1
print *,'pass '
end

function n()
  n=1
end function
function k()
  k=2
end function
