module m1
  integer(4),parameter:: x(*)=[1,2,3]
  integer(4):: a1(3)=x
 interface
    module subroutine sub1
    end subroutine
    module subroutine sub2
    end subroutine
  end interface
end
submodule (m1) mm1
  integer(4):: b1(3)=x
 interface
    module subroutine sub31
    end subroutine
  end interface
contains
  module procedure sub1
   if (any(a1/=x)) print *,201
   if (any(b1/=x)) print *,202
   call sub2
   call sub31
  end
end
submodule (m1:mm1) mm2
  integer(4):: c1(3)=x
 interface
    module subroutine sub32
    end subroutine
    module subroutine sub33
    end subroutine
  end interface
contains
  module procedure sub2
   if (any(a1/=x)) print *,301
   if (any(b1/=x)) print *,302
   if (any(c1/=x)) print *,303
  end
end
submodule (m1:mm2) mm3
  integer(4):: d1(3)=x
contains
  module procedure sub31
   if (any(a1/=x)) print *,401
   if (any(b1/=x)) print *,402
   if (any(c1/=x)) print *,403
   if (any(d1/=x)) print *,404
   call sub32
  end
  module procedure sub32
   if (any(a1/=x)) print *,501
   if (any(b1/=x)) print *,502
   if (any(c1/=x)) print *,503
   if (any(d1/=x)) print *,504
   call sub33
  end
  module procedure sub33
   if (any(a1/=x)) print *,601
   if (any(b1/=x)) print *,602
   if (any(c1/=x)) print *,603
   if (any(d1/=x)) print *,604
  end
end
use m1
call sub1
call sub2
print *,'pass'
end
