program main
  call sub()
contains
  subroutine sub()
    character(2) fun, ans
!$omp parallel
    ans=fun()
!$omp end parallel
    if (ans .eq. "ok") then
       print*,"OK"
    else
       print*,"NG"
    end if
  end subroutine sub
end program main

character(*) function fun()
  fun = "ok"
end function fun
