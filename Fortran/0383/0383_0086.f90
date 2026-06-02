integer function func01()
  func01 = 100
end function
integer function func02()
  func02 = 200
end function
module mod01
  interface
    integer function func01()
    end function
    integer function func02()
    end function
  end interface
  procedure(real),pointer :: ppp
  protected :: ppp
  protected :: qqq
  procedure(real),pointer :: qqq
end module
module mod02
  use mod01,aaa=>ppp,bbb=>qqq
  procedure(integer),pointer :: ppp
  procedure(integer),pointer :: qqq
end module
use mod02
ppp=>func01
qqq=>func02
if ( 100 .ne. ppp()) print *,'fail'
if ( 200 .ne. qqq()) print *,'fail'
print *,'ok'
end
