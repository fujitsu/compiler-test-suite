function func() result(ret)
type :: str
  sequence
  integer,allocatable :: iii(:)
  integer,allocatable :: jjj(:)
end type
type(str) :: ret
allocate(ret%iii(10),ret%jjj(10))
ret%iii = (/1,2,3,4,5,6,7,8,9,10/)
ret%jjj = (/11,12,13,14,15,16,17,18,19,20/)
end function

function ifunc() result(ret)
  type :: str
    sequence
    integer,allocatable :: iii(:)
    integer,allocatable :: jjj(:)
  end type
  interface
    function func() result(ret)
    type :: str
      sequence
      integer,allocatable :: iii(:)
      integer,allocatable :: jjj(:)
    end type
    type(str) :: ret
    end function
  end interface
  procedure(type(str)),pointer :: ret
  ret => func
end function

interface
function aaa() result(ret)
  type :: str
    sequence
    integer,allocatable :: iii(:)
    integer,allocatable :: jjj(:)
  end type
  procedure(type(str)),pointer :: ret
end function
end interface
type :: str
  sequence
  integer,allocatable :: iii(:)
  integer,allocatable :: jjj(:)
end type
procedure(aaa),pointer :: ppp
procedure(type(str)),pointer :: ppp2
procedure(aaa) :: ifunc
type(str) :: sss
ppp=>ifunc
ppp2=>ppp()
sss = ppp2()
if (all(sss%iii/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'ng1'
if (all(sss%jjj/=(/11,12,13,14,15,16,17,18,19,20/))) print *,'ng2'
print *,'pass'
end
