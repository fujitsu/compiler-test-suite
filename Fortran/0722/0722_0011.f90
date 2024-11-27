subroutine sub01(arg1) bind(C)
  integer,external :: arg1
end subroutine
function ifunc01(arg1) bind(C)
  integer,external :: arg1
end function

subroutine sub02(arg1) bind(C)
  integer,external :: arg1
  entry entsub02(arg1) bind(C)
end subroutine
function ifunc02(arg1) bind(C)
  integer,external :: arg1
  entry entifunc02(arg1) bind(C)
end function

subroutine sub03(arg1) bind(C)
  entry entsub03(arg1) bind(C)
  integer,external :: arg1
end subroutine
function ifunc03(arg1) bind(C)
  entry entifunc03(arg1) bind(C)
  integer,external :: arg1
end function

subroutine sub04(arg1)
  entry entsub04(arg1) bind(C)
  integer,external :: arg1
end subroutine
function ifunc04(arg1)
  entry entifunc04(arg1) bind(C)
  integer,external :: arg1
end function

subroutine sub05(arg1)
  integer,external :: arg1 
  entry entsub05(arg1) bind(C)
end subroutine
function ifunc05(arg1)
  integer,external :: arg1
  entry entifunc05(arg1) bind(C)
end function

subroutine sub06()
  entry entsub06(arg1) bind(C)
  integer,external :: arg1
end subroutine
function ifunc06()
  entry entifunc06(arg1) bind(C)
  integer,external :: arg1
end function

subroutine sub07()
  integer,external :: arg1
  entry entsub07(arg1) bind(C)
end subroutine
function ifunc07()
  integer,external :: arg1
  entry entifunc07(arg1) bind(C)
end function

end
