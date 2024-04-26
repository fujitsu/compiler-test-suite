interface 
 subroutine subb(dmy)
 integer :: dmy
 end
 subroutine subb2(dmy)
 integer :: dmy
 end subroutine
 function fun1(dmy)
 integer :: dmy
 real :: fun1
 end
 function fun2(dmy)
 integer :: dmy
 logical :: fun2
 end function
end interface
integer :: ii=0
call subb(ii)
if(ii /= 1) print *,101,ii
call subb2(ii)
if(ii /= 2) print *,102,ii
if(int(fun1(ii)) /= 1) print *,103,ii
if(fun2(ii) .neqv. .true.) print *,104,ii
print *,"Pass"
end
    subroutine subb(dmy)
    integer :: dmy
    dmy = 1
    contains
    end subroutine
    subroutine subb2(dmy)
    integer :: dmy
    dmy = 2
    contains
    end
    function fun1(dmy)
    integer :: dmy
    real :: fun1
    fun1=1.0
    end function
    function fun2(dmy)
    integer :: dmy
    logical :: fun2
    fun2=.true.
    end function
