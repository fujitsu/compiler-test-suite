module test_module1
  private
  INTEGER :: LEVEL = -1
  public m1_sub

contains
  subroutine m1_sub()
    integer DERF(5)/1,-100,30,40,50/
    real(8),parameter :: ans=93.0
    real(8) :: result
    LEVEL = ifunc(3)
    do I = 2, LEVEL
        DERF(I) = DERF(I-1)
    end do
    result = sum(DERF)
    
    if (result .eq. ans) then
       print *,"ok"
    else
       print *,"ng",result,ans
    endif
  end subroutine m1_sub
end module test_module1

program main
 use test_module1
 call m1_sub()
end program main

integer function ifunc(nn)
ifunc = nn
return
end function
