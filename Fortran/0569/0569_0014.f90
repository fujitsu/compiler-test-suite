               character(len=4) :: res
                character(len = 5):: act2
               res = func_elemental(act2)
               if(res /= "ABCD")print*,102
               print*,"PASS"
        contains
           impure elemental function func_elemental(dmy2)
              character(len = *),intent(IN):: dmy2
             character(len = len(dmy2))::func_elemental
             func_elemental ="ABCD"
              if(len(func_elemental)/=5) print*,101
           end function
        end
       

