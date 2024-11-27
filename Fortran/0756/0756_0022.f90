    module a
      integer,parameter::x=3
    end

    program main
    interface
      integer(k4) function a1()
        use a  
        import 
      integer,parameter::k4=8
      end function a1
    end interface
    if (a1()/=1) print *,1
print *,'pass'
    end program main

      integer(k4) function a1() 
      integer,parameter::k4=8
        a1=1
      end function a1
