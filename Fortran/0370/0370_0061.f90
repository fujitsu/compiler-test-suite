interface
   function func() result(ret)
     integer :: ret
   end function func
end interface

  type tp0
     integer :: mem1 = 5
     procedure(func),POINTER,NOPASS :: proc1
     integer :: mem2 = 50
  end type tp0

  type(tp0) aa

  aa%proc1 => func

  print *, aa%mem1
  print *, aa%proc1()
end

   function func() result(ret)
     integer :: ret

     ret = 500
   end function func
