module m
  type gen1
     integer :: i
  end type gen1
  type gen2
     integer :: i
  end type gen2
  interface gen1
     module function fun1()
     end function
  end interface
  interface gen2
     module function fun2()
     end function
  end interface
end

submodule(m)smoD
  type gen3
     integer :: i
  end type gen3
  type gen4
     integer :: i
  end type gen4
  interface gen3
    module function fun3()
    end function
 end interface
 interface gen4
    module function fun4()
    end function
  end interface
contains
  module function fun1()
    fun1=1
  end function
  module function fun3()
    if (gen4()/=4) print *,'fun4:err'
    fun3=3
  end function
end

submodule(m:smoD)ssmod
  type gen5
     integer :: i
  end type gen5
  interface gen5
     module procedure fun5
  end interface
contains
  module function fun2()
    if (gen3()/=3) print *,'fun3:err'
    fun2=2
  end function
  module function fun4()
    if (gen5()/=5) print *,'fun5:err'
    fun4=4
  end function
  function fun5()
    fun5=5
  end function
end

use m
if (gen1()/=1) print *,'fun1:err'
if (gen2()/=2) print *,'fun2:err'
print *,'pass'
end
