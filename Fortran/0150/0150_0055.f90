    module a
      integer,parameter::x=8
    end

    program main
    interface
      integer(x) function a1()   
        use a 
        import 
        import 
        import 
        import 
        import 
      end function a1
    end interface
    if (a1()/=1) print *,1
print *,'pass'
    end program main

      integer(x) function a1() 
        use a
        a1=1
      end function a1
