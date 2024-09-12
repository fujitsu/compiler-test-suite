 interface
  function prc01_fun()
   integer :: prc01_fun
  end function
 end interface
 procedure(prc01_fun) :: fun01
 procedure(),pointer :: www
 www => fun01

print *,'pass'
end

function prc01_fun()
 integer :: prc01_fun
 prc01_fun = 101
end function

function fun01()
 integer :: fun01
 fun01 = 1
end function
