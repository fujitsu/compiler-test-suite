call test01()

print *,"pass "
end

function iiii(ii)
 iiii=1
end

module mod
 integer,external :: iiii
 contains
  function ifun(ii) result(if)
   procedure(integer),pointer :: if
   integer  :: ii
   external :: ii
   if=>ii
  end function
end

subroutine test01()
 use mod
 call isub(ifun(iiii))
 contains
  subroutine isub(ip)
   integer  :: ip
   external :: ip
   pointer  :: ip
   target   :: ii
   intent(in) ::ip
   i=ip(ii)
   if (i.ne.1) print *,"error"
  end subroutine
end subroutine
