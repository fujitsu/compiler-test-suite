print *,'pass'
end

  module mod01
  interface aaa
   module procedure ifunc
  end interface
  contains
  subroutine sub(i)
  integer i(aaa((/1,1/)))
  i=10
  end subroutine
  pure function ifunc(ia)
  integer,intent(in):: ia(2)
  ifunc=10
  end function
  end
