interface
 function func(p1,p2,p3,p4,p5)
  interface
   function func1(i)
    integer :: i
    integer :: func1
   end function
   function func2(i)
    logical :: i
    logical :: func2
   end function
   function func3(i)
    real    :: i
    real    :: func3
   end function
   function func4(i)
    character :: i
    character :: func4
   end function
   function func5(i)
    interface
     function funcp(i)
      integer :: i
      integer :: funcp
     end function
    end interface
    procedure(funcp),pointer :: i
    procedure(funcp),pointer :: func5
   end function
  end interface
  procedure(func1),pointer,optional::p1
  procedure(func2),pointer,optional::p2
  procedure(func3),pointer,optional::p3
  procedure(func4),pointer,optional::p4
  procedure(func5),pointer,optional::p5
  procedure(func5),pointer :: func
 end function
 subroutine sub(p1,p2,p3,p4,p5)
  interface
   function func1(i)
    integer :: i
    integer :: func1
   end function
   function func2(i)
    logical :: i
    logical :: func2
   end function
   function func3(i)
    real    :: i
    real    :: func3
   end function
   function func4(i)
    character :: i
    character :: func4
   end function
   function func5(i)
    interface
     function funcp(i)
      integer :: i
      integer :: funcp
     end function
    end interface
    procedure(funcp),pointer :: i
    procedure(funcp),pointer :: func5
   end function
  end interface
  procedure(func1),pointer,optional::p1
  procedure(func2),pointer,optional::p2
  procedure(func3),pointer,optional::p3
  procedure(func4),pointer,optional::p4
  procedure(func5),pointer,optional::p5
 end subroutine
 function func1(i)
  integer :: i
  integer :: func1
 end function
 function func2(i)
  logical :: i
  logical :: func2
 end function
 function func3(i)
  real    :: i
  real    :: func3
 end function
 function func4(i)
  character :: i
  character :: func4
 end function
 function func5(i)
  interface
   function funcp(i)
    integer :: i
    integer :: funcp
   end function
  end interface
  procedure(funcp),pointer :: i
  procedure(funcp),pointer :: func5
 end function
end interface

 procedure(func1),pointer::p1
 procedure(func2),pointer::p2
 procedure(func3),pointer::p3
 procedure(func4),pointer::p4
 procedure(func5),pointer::p5,rstp

print *,'pass'

end

function func(p1,p2,p3,p4,p5)
 interface
  function func1(i)
   integer :: i
   integer :: func1
  end function
  function func2(i)
   logical :: i
   logical :: func2
  end function
  function func3(i)
   real    :: i
   real    :: func3
  end function
  function func4(i)
   character :: i
   character :: func4
  end function
  function func5(i)
   interface
    function funcp(i)
     integer :: i
     integer :: funcp
    end function
   end interface
   procedure(funcp),pointer :: i
   procedure(funcp),pointer :: func5
  end function
 end interface
 procedure(func1),pointer,optional::p1
 procedure(func2),pointer,optional::p2
 procedure(func3),pointer,optional::p3
 procedure(func4),pointer,optional::p4
 procedure(func5),pointer,optional::p5
 procedure(func5),pointer :: func
 procedure(func1),pointer :: pp,ppp

 integer   i
 logical   l
 real      r
 character c

 if (present(p1)) then
  p1=>func1
  i = p1(1)
 else
  i = func1(1)
 endif

 if (i.ne.1) print *,'fail'

 if (present(p2)) then
  p2=>func2
  l = p2(.true.)
 else
  l = func2(.true.)
 endif

 if (l.neqv..true.) print *,'fail'

 if (present(p3)) then
  p3=>func3
  r = p3(1.0)
 else
  r = func3(1.0)
 endif

 if (r.ne.1.0) print *,'fail'

 if (present(p4)) then
  p4=>func4
  c = p4('a')
 else
  c = func4('a')
 endif

 if (c.ne.'a') print *,'fail'

 if (present(p5)) then
  p5=>func5
  func => p5
 else
  func => func5
 endif

 pp=>func1
 ppp => func(pp)
 if (pp(1).ne.1) print *,'fail'

end function

subroutine sub(p1,p2,p3,p4,p5)
 interface
  function func1(i)
   integer :: i
   integer :: func1
  end function
  function func2(i)
   logical :: i
   logical :: func2
  end function
  function func3(i)
   real    :: i
   real    :: func3
  end function
  function func4(i)
   character :: i
   character :: func4
  end function
  function func5(i)
   interface
    function funcp(i)
     integer :: i
     integer :: funcp
    end function
   end interface
   procedure(funcp),pointer :: i
   procedure(funcp),pointer :: func5
  end function
 end interface
 procedure(func1),pointer,optional::p1
 procedure(func2),pointer,optional::p2
 procedure(func3),pointer,optional::p3
 procedure(func4),pointer,optional::p4
 procedure(func5),pointer,optional::p5
 procedure(func5),pointer :: func
 procedure(func1),pointer :: pp,ppp

 integer   i
 logical   l
 real      r
 character c

 if (present(p1)) then
  p1=>func1
  i = p1(1)
 else
  i = func1(1)
 endif

 if (i.ne.1) print *,'fail'

 if (present(p2)) then
  p2=>func2
  l = p2(.true.)
 else
  l = func2(.true.)
 endif

 if (l.neqv..true.) print *,'fail'

 if (present(p3)) then
  p3=>func3
  r = p3(1.0)
 else
  r = func3(1.0)
 endif

 if (r.ne.1.0) print *,'fail'

 if (present(p4)) then
  p4=>func4
  c = p4('a')
 else
  c = func4('a')
 endif

 if (c.ne.'a') print *,'fail'

 if (present(p5)) then
  p5=>func5
  func => p5
 else
  func => func5
 endif

 pp=>func1
 ppp => func(pp)
 if (pp(1).ne.1) print *,'fail'

end subroutine

function func1(i)
 integer :: i
 integer :: func1
 func1 = i
end function
function func2(i)
 logical :: i
 logical :: func2
 func2 = i
end function
function func3(i)
 real    :: i
 real    :: func3
 func3 = i
end function
function func4(i)
 character :: i
 character :: func4
 func4 = i
end function
function func5(i)
 interface
  function funcp(i)
   integer :: i
   integer :: funcp
  end function
 end interface
 procedure(funcp),pointer :: i
 procedure(funcp),pointer :: func5
 func5 => i
end function
