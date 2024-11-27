 call s1
 print *,'pass'
 end
 subroutine s1
      implicit none
      real :: x,y,z
      character(len=20) :: tabs,spaces
      spaces = "1.0 2.0 3.0"
      tabs = "1.0       2.0 3.0"
      read(unit=tabs,fmt=*) x,y,z
      write(unit=1,fmt=*) x,y,z
 end
