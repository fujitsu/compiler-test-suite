module m
 interface
   module subroutine sub
   end subroutine
 end interface
end

subroutine sub
  print *,'ng'
end

submodule(m)sub
contains
  subroutine sub1
    print *,'ng'
  end subroutine
  module subroutine sub
    print *,'pass'
  end subroutine
  subroutine sub2
    print *,'ng'
  end subroutine
end


use m
call sub
end
