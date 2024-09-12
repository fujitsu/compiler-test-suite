module mod01
  contains
   function mifunc01() result(mirst01)
    interface
     function ifunc02() result(irst02)
      integer :: irst02
     end function
    end interface
    integer,external,pointer :: mirst01
    mirst01 => ifunc02
   end function
   subroutine m2sub01()
    interface
     function ifunc02() result(irst02)
      integer :: irst02
     end function
    end interface
    procedure(ifunc02), pointer :: ipprocp01
    ipprocp01 => mifunc01()
    i=ipprocp01()
   end subroutine
 end module
 
 use mod01
 call m2sub01()
print *,'pass'
 end
 
     function ifunc02() result(irst02)
      integer :: irst02
      irst02 =1
     end function
