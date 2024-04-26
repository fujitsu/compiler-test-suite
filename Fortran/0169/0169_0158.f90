module m
  interface
     module function fun1()
     end function
     module function fun2()
     end function
  end interface
end

submodule(m)smoD
  interface
    module function fun3()
    end function
    module function fun4()
    end function
  end interface
contains
  module function fun1()
    fun1=1
  end function
  module function fun3()
    if (fun4()/=4) print *,'fun4:err'
    fun3=3
  end function
end

submodule(m:smoD)ssmod
contains
  module function fun2()
    if (fun3()/=3) print *,'fun3:err'
    fun2=2
  end function
  module function fun4()
    if (fun5()/=5) print *,'fun5:err'
    fun4=4
  end function
  function fun5()
    fun5=5
  end function
end

use m
if (fun1()/=1) print *,'fun1:err'
if (fun2()/=2) print *,'fun2:err'
print *,'pass'
end
