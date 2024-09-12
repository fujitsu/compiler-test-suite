subroutine sub01(arg1)
  character(*) :: arg1
  print *,'sub01:',arg1
end subroutine
subroutine sub02(arg1)
  character(*) :: arg1
  print *,'sub02:',arg1
end subroutine
subroutine sub03(arg1)
  character(*) :: arg1
  print *,'sub03:',arg1
end subroutine
module mod01
  interface
  subroutine sub01(arg1)
    character(*) :: arg1
  end subroutine
  end interface
  type,private :: str
    procedure(),nopass,pointer,private :: ppp1 
    procedure(),pointer,nopass,private  :: ppp2 => null()
    procedure(),nopass,pointer,private  :: ppp3 
  end type
  type,private :: str1
    type(str) :: sss
  end type
  private :: sss,msub01
  type(str1),save :: sss
  interface mod01sub
     module procedure msub01
  end interface
  contains
  subroutine msub01(arg1)
    character(*) :: arg1
    procedure(sub01) :: sub01
    procedure(sub01) :: sub02
    procedure(sub01) :: sub03
    sss%sss%ppp1=>sub01
    sss%sss%ppp2=>sub02
    sss%sss%ppp3=>sub03
    call sss%sss%ppp1(arg1)
    call sss%sss%ppp2(arg1)
    call sss%sss%ppp3(arg1)
  end subroutine
end module
module mod02
  use mod01
  type,private :: str
    procedure(),nopass,pointer,private :: ppp1 
    procedure(),pointer,nopass,private  :: ppp2 => null()
    procedure(),nopass,pointer,private  :: ppp3 
  end type
  type :: str1
    type(str) :: sss
  end type
  private :: sss,msub01
  type(str1),save :: sss
  interface mod02sub
     module procedure msub01
  end interface
  contains
  subroutine msub01(arg1)
    character(*) :: arg1
    procedure(sub01) :: sub01
    procedure(sub01) :: sub02
    procedure(sub01) :: sub03
    sss%sss%ppp1=>sub01
    sss%sss%ppp2=>sub02
    sss%sss%ppp3=>sub03
    call sss%sss%ppp1(arg1)
    call sss%sss%ppp2(arg1)
    call sss%sss%ppp3(arg1)
  end subroutine
end module
use mod01
use mod02
call mod01sub('mod01sub')
call mod02sub('mod02sub')
print *,'ok'
end
