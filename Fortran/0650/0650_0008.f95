call test01()
call test02()
call test03()
print *,'pass'
end 

 subroutine sub1(ifun,ians)
 interface
   function ifun() result(fun);integer fun(10); end function
 end interface
 optional ifun
 integer ians,ia(10)
 ia=ifun()
 ians=ia(1)
 end subroutine
 subroutine sub2(rfun,ians)
 interface
   function rfun() result(fun);real    fun(10); end function
 end interface
 optional rfun
 integer ians,ia(10)
 ia=int(rfun())
 ians=ia(1)
 end subroutine

 function ifun() result(fun);integer fun(10); fun=(/(i,i=1,10)/) ; end
 function rfun() result(fun);real    fun(10); fun=(/(real(i),i=10,1,-1)/) ; end

subroutine test01()
interface sub
 subroutine sub2(rfun,ians)
 interface
   function rfun() result(fun);real    fun(10); end function
 end interface
 optional rfun
 integer ians
 end subroutine
 subroutine sub1(ifun,ians)
 interface
   function ifun() result(fun);integer fun(10); end function
 end interface
 optional ifun
 integer ians
 end subroutine
end interface
interface
  function ifun() result(fun);integer fun(10); end function
  function rfun() result(fun);real    fun(10); end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test02()
interface sub
 subroutine sub2(rfun,ians)
 interface
   function rfun() result(fun);real    fun(10); end function
 end interface
 optional rfun
 integer ians
 end subroutine
 subroutine sub1(ifun,ians)
 interface
   function ifun() result(fun);integer fun(10); end function
 end interface
 optional ifun
 integer ians
 end subroutine
end interface
interface
  function ifun() result(fun);integer fun(10); end function
  function rfun() result(fun);real    fun(10); end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test03()
interface sub
 subroutine sub2(rfun,ians)
 interface
   function rfun() result(fun);real    fun(10); end function
 end interface
 optional rfun
 integer ians
 end subroutine
 subroutine sub1(ifun,ians)
 interface
   function ifun() result(fun);integer fun(10); end function
 end interface
 optional ifun
 integer ians
 end subroutine
end interface
interface
  function ifun() result(fun);integer fun(10); end function
  function rfun() result(fun);real    fun(10); end function
end interface
integer ians
call sub1(ifun,ians)
if (ians.ne.1) call errtra
call sub2(rfun,ians)
if (ians.ne.10) call errtra
end
