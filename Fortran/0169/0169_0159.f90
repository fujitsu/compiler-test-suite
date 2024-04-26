module m
  interface operator(.funa.)
     module integer function fun1(a)
       integer,intent(in)::a
     end function fun1
  end interface
  interface operator(.funb.)
     module integer function fun2(a)
       integer,intent(in)::a
     end function fun2
  end interface
end

submodule(m)smoD
  interface operator(.func.)
    module function fun3(a)
      integer fun3
      integer,intent(in)::a
    end function
 end interface
 interface operator(.fund.)
    module function fun4(a)
      integer fun4
      integer,intent(in)::a
    end function
 end interface
contains
  module function fun1(a)
    integer :: fun1
    integer,intent(in)::a
    fun1=1
  end function
  module function fun3(a)
    integer :: fun3
    integer,intent(in)::a
    if ((.fund. 1)/=4) print *,'fun4:err'
    fun3=3
  end function
end

submodule(m:smoD)ssmod
  interface operator(.fune.)
     module procedure fun5
  end interface
contains
  module function fun2(a)
    integer :: fun2
    integer,intent(in)::a
    if ((.func. 1)/=3) print *,'fun3:err'
    fun2=2
  end function
  module function fun4(a)
    integer :: fun4
    integer,intent(in)::a
    if ((.fune.1)/=5) print *,'fun5:err'
    fun4=4
  end function
  function fun5(a)
    integer :: fun5
    integer,intent(in) :: a
    fun5=5
  end function
end

use m

if ((.funa.1)/=1) print *,'fun1:err', .funa.1
if ((.funb.1)/=2) print *,'fun2:err', .funb.1
print *,'pass'
end
