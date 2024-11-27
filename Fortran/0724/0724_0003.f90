interface
 function func1() result(rst)
  integer :: rst(abs(1):abs(2)) 
 end function
end interface

integer :: b(abs(1):abs(2))

b=func1()

end

subroutine sub(i,r,j)
 interface
  pure function ifun()
  end function
 end interface
 integer :: i(int(r))
 integer :: j(ifun())
end subroutine

pure function ifun()
 ifun=1
end function

function func1() result(rst)
 integer :: rst(abs(1):abs(2))
 rst=1
end function
