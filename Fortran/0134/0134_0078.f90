subroutine s
interface
  function c()
    character c
  end function
end interface
procedure(character),pointer::p
p=>c
if (p()/='1')print *,101,p()
end
call s
print *,'pass'
end
  function c()
    character c
    c='1'
  end function

