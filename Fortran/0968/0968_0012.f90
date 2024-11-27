intrinsic :: int
intrinsic :: ichar
intrinsic :: maxloc

interface int
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

interface ichar
 function ifunc02() result(irst02)
  integer :: irst02
 end function
end interface

interface maxloc
 function ifunc03() result(irst03)
  integer :: irst03
 end function
end interface

type int
 integer :: i01
 integer :: i02
 integer :: i03
end type

type ichar
 character :: i01
 integer   :: i02 = 4
end type

type maxloc
 character :: i01(1)
 integer   :: i02
end type

print *,int()
print *,int(1)
print *,int(1,2,3)

print *,ichar('1')
print *,ichar('1', 4)

print *,maxloc(['a'], 1)

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function
