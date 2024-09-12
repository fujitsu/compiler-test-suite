 module m1
 abstract interface
    subroutine gen01()
    end subroutine
 end interface
 abstractinterface
 subroutine gen02()
 end subroutine
 end interface
 interface 
 subroutine gen03()
 end subroutine
 end interface
 interface  gen04
 subroutine gen041()
 end subroutine
 end interface
 interfacegen05
 subroutine gen051()
 end subroutine
 end interface
 end

 subroutine s1
 use m1
 print *,'pass'
 end
 call s1
 end    


