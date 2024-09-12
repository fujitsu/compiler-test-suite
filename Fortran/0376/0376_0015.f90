subroutine s
interface 
  function ifun()
  end function
end interface
procedure(ifun),pointer :: ip
ip=>ifun
if (.not.associated(ip,ifun)) print *,'error-2'
call t1(ip)
contains
subroutine t1(ip)
interface 
  function ifun()
  end function
end interface
procedure(ifun),pointer :: ip
if (.not.associated(ip,ifun)) print *,'error-12'
if (ifun()/=1)print *,'error-3'
end subroutine
end
call s
print *,"pass"
end
  function ifun()
   ifun=1
  end function
