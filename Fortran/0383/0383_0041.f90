call test01()

print *,"pass "
end

function iiii(ii)
 iiii=1
end

subroutine test01()
  integer,external :: iiii
  call isub(ifun(iiii))
  contains
    function ifun(ii) result(if)
      procedure(integer),pointer :: if
      integer  :: ii
      external :: ii
      if=>ii
    end function
    subroutine isub(ip)
      integer  :: ip
      external :: ip
      pointer  :: ip
      target   :: ii
      intent(in) :: ip
      i=ip(ii)
      if (i.ne.1) print *,"error"
    end subroutine
end subroutine
