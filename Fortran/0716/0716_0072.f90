interface
 function func() result(rst)
  integer :: rst
 end function
end interface

character(len=6) :: var01,var02
character(len=1) :: cc1(5)
integer :: iii,iiii(3)

type ty1
 integer :: i
end type

iii = 1
iiii = 2

var01 = 'abcdef'
var02 = 'ghijkl'

cc1 = 'b'

print *,[character :: var01,var02]

print *,(/character(len=3) :: (/'a'/), 'b'/)

print *,(/character(len=iii) :: (/(/'a'/)/), 'b'/)
print *,(/character(len=iiii(1)) :: (/(/'a'/)/), 'b'/)

print *,(/character(len=func()) :: (/'a','e'/), (/character :: 'b'/)/)
print *,(/character(len=func2()) :: 'a', 'b'/)

cc1 = (/'a', 'b', (/character(len=func2()) :: 'a', (/'abc','def'/)/)/)
print *,(/cc1, (/character(len=len(cc1)) :: 'a', (/'abc','def'/)/)/)

print *,(/' ', (/character(len=1) :: 'a', (/'abc',(/character(3) :: ''/)/)/)/)

print *,(/character :: [[character :: ' ']],[character (3) :: [['1' , '2' ]]]/)

print *,(/character(*) :: [['abc']]/)

print *,[[character (len = iii) :: 'a'], 'bbb', ['ax']]

 contains
  function func2() result(rst)
   integer :: rst
   rst = 1
  end function

end

 function func() result(rst)
  integer :: rst
  rst = 3
 end function

 function func3() result(rst)
  integer :: rst
  rst = 1
 end function
