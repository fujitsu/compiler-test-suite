module m1
integer::nn=0
interface
  module subroutine s11
  end subroutine
  module subroutine s21
  end subroutine
end interface
interface
  module subroutine sub
  end subroutine
end interface
interface
  subroutine subxx
  end subroutine
end interface
interface
  subroutine subyy
  end subroutine
end interface
contains
subroutine zz
interface
  subroutine subyy
  end subroutine
end interface
end subroutine
end

submodule(m1) smod11
contains
module subroutine s11
nn=nn+1
call sub
end subroutine
end 
submodule(m1:smod11) smod12
contains
  module subroutine sub
nn=nn+10
  end subroutine
end 

submodule(m1) smod21
interface
  module subroutine sxx
  end subroutine
end interface
contains
module subroutine s21
nn=nn+100
call sxx
end subroutine
end 
submodule(m1:smod21) smod22
contains
  module subroutine sxx
nn=nn+1000
  end subroutine
end 

use m1
call s11
call s21
call sub
if (nn/=1121) print *,301
print *,'pass'
end
