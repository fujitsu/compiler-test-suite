module n
  interface assignment(=)
    procedure f1
  end interface
  interface operator (+)
    procedure f2
  end interface
  interface operator (.x.)
    procedure f3
  end interface
  interface operator (.y.)
    procedure f4
  end interface
private ::f1,f2,f3,f4
contains
function    f4(a) result(r)
logical     ::r
character(*),intent(in)::a
if (a/='1') print *,900
r=.false.
end
function    f3(a,b) result(r)
logical     ::r
character(*),intent(in)::a
real,intent(in)::b
if (a/='1') print *,900
if (b/=1.) print *,901
r=.false.
end
function    f2(a,b) result(r)
logical     ::r
character(*),intent(in)::a
real,intent(in)::b
if (a/='1') print *,900
if (b/=1.) print *,901
r=.false.
end
subroutine  f1(a,b)
character(*),intent(out)::a
real,intent(in)::b
if (b/=1.) print *,901
a='1'
end 
end
module n1
use n
end
module n2
use n1
end
module m1
use n2
implicit none
 private::assignment(=),operator (+),operator (.x.),operator (.y.)
public::sub1
  interface
     module subroutine sub1()
     end subroutine
     module subroutine sub2()
     end subroutine
  end interface
end module m1
submodule (m1) m1sub
contains
  module subroutine sub1()
implicit none
character::c
c=1.
if (c/='1') print *,101
if ('1' + 1.) print *,1011
if ('1' .x. 1.) print *,1012
if (.y.'1') print *,100
end
end submodule m1sub
submodule (m1:m1sub) m2sub
end
submodule (m1:m2sub) m3sub
end
submodule (m1:m3sub) m4sub
end
submodule (m1:m4sub) m5sub
contains
  module subroutine sub2()
implicit none
character::c
c=1.
if (c/='1') print *,101
if ('1' + 1.) print *,1011
if ('1' .x. 1.) print *,1012
if (.y.'1') print *,100
end
end 


use m1
call sub1
call sub2

print *,'sngg146o : pass'
end
