subroutine s1
interface sin
  function ix(n)
  end function
end interface
if (sin(1)/=1) print *,101
end
  function ix(n)
    ix=n
  end function
call s1
print *,'pass'
end
