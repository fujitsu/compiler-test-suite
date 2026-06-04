interface 
  subroutine s1(k)
    interface 
       subroutine sub()
       end subroutine
    end interface
    procedure (sub),pointer::k
  end subroutine
  subroutine sub()
  end subroutine
  function f() result(k)
    interface 
       subroutine sub()
       end subroutine
    end interface
    procedure (sub),pointer::k
  end function
end interface
    procedure (sub),pointer::k
k=>null()
call s1(k)
call s1(f())
call s1(null())
print *,'pass'
end
  subroutine s1(k)
    interface 
       subroutine sub()
       end subroutine
    end interface
    procedure (sub),pointer::k
    if (associated(k))print *,'fail'
  end subroutine
  function f() result(k)
    interface 
       subroutine sub()
       end subroutine
    end interface
    procedure (sub),pointer::k
    k=>null()
  end function
