module mod
  contains
  function msub01(proc) bind(C)
    interface
      function proc()
      end function
    end interface
  end function
  function msub02(proc) bind(C)
    external :: proc
  end function
end module
function sub01(proc) bind(C)
  interface
    function proc()
    end function
  end interface
end function
function sub02(proc) bind(C)
  external :: proc
end function
function sub03() 
  entry ent03(proc) bind(C)
  external :: proc
end function
function sub04() 
  external :: proc
  entry ent04(proc) bind(C)
end function
function sub05() 
  interface
    function proc()
    end function
  end interface
  entry ent05(proc) bind(C)
end function
end
