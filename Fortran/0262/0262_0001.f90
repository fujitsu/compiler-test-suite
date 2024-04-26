         module m1
         procedure(mfun) ::p1
         procedure(p1) ::p2
         contains
         function mfun(d1)
         integer :: mfun,d1
         mfun =d1 + 2
         end
         end
       
        use m1
        procedure(p2) ::p3
        procedure(p3) ::p4
        integer :: a=5
        if(p4(a) .ne. 10)print*,"101"
        print*,"pass"
        end
        
        function p4(d2)
        integer :: p4,d2
        p4=d2+5
        end function
