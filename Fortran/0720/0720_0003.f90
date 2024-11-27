subroutine s1
 interface
    function f(c) result(r)
      character(:),pointer::r
      character(*),target::c
    end function
    function x(c) result(r)
      character(:),pointer::r
      character(*),target::c
    end function
 end interface
 procedure(f),pointer::p
 character(3),target::c3='123'
 character(5),target::c5='abcde'
 p=>f
 if (p(c3)/='123')print *,'error'
 p=>x
 if (p(c5)/='abcde')print *,'error-2'
end
    function f(c) result(r)
      character(:),pointer::r
      character(*),target::c
      r=>c
    end function
    function x(c) result(r)
      character(:),pointer::r
      character(*),target::c
      r=>c
    end function
call s1
print *,'pass'
end
