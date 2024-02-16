  integer::xxx
  xxx=fun([1.0,2.0])
  if(xxx/=1) print *,'err',xxx
  print *,'pass'
contains
  function fun(x) result(res)
    real(4), intent(in), dimension(:) :: x
    integer::dov,res
    res = 1
    do dov = 1, size(x)
       if (x(dov) > 2.0) then
          res = res **2
       end if
    end do
  end function fun
end program
