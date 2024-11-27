  module mod
  intrinsic kind
  end module

  integer(kind(3)) function fun()
    use mod
  end function
  print *,'pass'
 end
