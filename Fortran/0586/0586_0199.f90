        interface
         function funci1() result(rst)
            integer(kind=1) :: rst
         end function
        end interface
        
        procedure(funci1),pointer :: pi1=>funci1
        if(associated(pi1).neqv..true.)print*,"101"
        print*,"PASS"
        end
         function funci1() result(rst)
           integer(kind=1) :: rst
         end function

