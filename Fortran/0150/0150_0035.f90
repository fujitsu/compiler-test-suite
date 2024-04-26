    module a
      integer,parameter::x=3
    end

    program main
    interface
      integer(4) function k1() 
        use a
        import 
      end function k1
    end interface
    if (k1()/=1) print *,1
print *,'pass'
    end program main

      integer(4) function k1() 
        use a
        k1=1
      end function k1
