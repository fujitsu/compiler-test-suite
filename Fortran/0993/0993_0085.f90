  module mod
    type,private::typ 
      integer :: elm
    end type
    private gen
    interface gen
      module procedure fun1 , fun2 ,ent1 , ent2
    end interface

    contains
    type(typ) function fun1()
      type(typ) ent1
      fun1 = typ(1)
    entry ent1(i)
      ent1 = typ(1+i)
    end function

    function fun2(arg)
      type(typ) arg
    entry ent2(arg,i)
      fun2 = arg%elm+i
    end function
  end module

  program main

  end program main
