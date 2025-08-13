module mod
  interface
    subroutine s1(f1)
      interface 
        function f1() result(r)
          integer::r
        end function
      end interface
    end subroutine
    subroutine s2(f1)
      interface 
        function f1() result(r)
          real   ::r
        end function
      end interface
    end subroutine
  end interface
  interface gnr
    procedure  s1
    procedure  s2
  end interface
end
subroutine xx
use mod
      interface 
        function fx() result(r)
          integer::r
        end function
        function fy() result(r)
          real   ::r
        end function
      end interface
call gnr(fx)
call gnr(fy)
end
call xx
call chk
print *,'pass'
end
    subroutine s1(f1)
      interface 
        function f1() result(r)
          integer::r
        end function
      end interface
      if (f1()/=2) print *,101
    end subroutine
    subroutine s2(f1)
      interface 
        function f1() result(r)
          real   ::r
        end function
      end interface
      if (abs(f1()-1.234)>0.001) print *,102
    end subroutine
        function fx() result(r)
          integer::r
write(8,*) 'fx'
          r=2
        end function
        function fy() result(r)
          real   ::r
          r=1.234
write(8,*) 'fy'
        end function
subroutine chk
character(2)::c
rewind 8
read(8,'(x,a)') c
if (c/='fx') print *,301
read(8,'(x,a)') c
if (c/='fy') print *,302
end
