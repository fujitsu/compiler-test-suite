integer :: p1,p2,p3,ret

p1 = 0
p2 = 0
p3 = 0

ret = fun(p1,p2,p3)
if (p1==0 .and. p2==100 .and. p3==0 .and. ret==0) then
  print *,"pass"
else
  print *,"err"
end if
contains
  function fun(p1,p2,p3)
    integer p1,p2,p3
    value :: p1,p3
    p1 = 100
    p2 = 100
    p3 = 100
    fun = 0
    return
  end function
end program
