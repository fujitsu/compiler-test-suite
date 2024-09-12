subroutine s1
 interface
    function f() result(r)
      character(:),pointer::r
    end function
 end interface
 procedure(f),pointer::p,pp
 p=>f
 if (p()/='123')print *,'error'
 pp=>p
 if (pp()/='123')print *,'error-2'
end
    function f() result(r)
      character(:),pointer::r
      character(3),target::c
      common /com/ c
      c='123'
      r=>c
    end function
call s1
print *,'pass'
end
