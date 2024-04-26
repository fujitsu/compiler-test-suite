subroutine s1
call s11(fs(null() ))
contains
 function fs(p)
 integer,pointer::p,fs
 fs=>p
 end function

 subroutine s11(n)
  integer,optional :: n
  if (present(n)) print *,101
 end subroutine
end
call s1
print *,'pass'
end
