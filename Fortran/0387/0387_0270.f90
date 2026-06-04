call test01()
call test02()

print *,"pass"

end

module mod
 contains
  integer function ifun()
   ifun=1
   end function
  subroutine sub(i)
   integer :: i
   i=100
  end subroutine
end module

subroutine test01()
 use mod
 procedure(),pointer :: ip1
 ip1=>sub
 call ip1(i)
 if (i.ne.100) print *,'fail'
end

subroutine test02()
 use mod
 pointer :: ip2
 procedure() :: ip2
 ip2=>sub
 call ip2(i)
 if (i.ne.100) print *,'fail'
end
