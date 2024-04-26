    module a
      integer,parameter::x=3
    end

    program main
    interface
      integer(4) function a1()
        use a
        import
      end function a1
    end interface
    if (a1()/=1) print *,1
print *,'pass'
    end program main

      integer(4) function a1() 
        use a
        a1=1
      end function a1
