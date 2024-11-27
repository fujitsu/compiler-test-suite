  program main
    contains

    recursive elemental function fun1()
      fun1 = 1
    end function

    elemental recursive function fun2()
      fun2 = 1
    end function

  end program main
