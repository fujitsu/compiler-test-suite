common /aa/ i(3)
i=(/1,2,3/)
call s1
contains

  subroutine s1
  common /aa/ j(3)
  j(2:3)=i(1:2)
  if (any(j/=(/1,1,2/))) then
    print *,'error'
  else
    print *,'ok'
  endif
  end subroutine
  end
