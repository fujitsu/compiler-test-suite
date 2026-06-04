interface
        subroutine sub()
        character(len=:), target , allocatable ::trg(:)
        character(len=:), target, allocatable ::ctrg(:)
        character(len=:), target, allocatable ::rtrg(:)
        end subroutine
end interface
call sub()
end
       FUNCTION f1 ( tar)
       character(len=:), pointer :: f1(:)
       character(len=:), pointer :: f2(:)
       character(len=:), pointer :: f3(:)
       character(len=:), target, allocatable :: tar(:)
       f1=>tar
       return
       entry f2(tar)
       f2=>tar
       return
       entry f3(tar)
       f3=>tar
       end function
        subroutine sub()
        interface
                 FUNCTION f1 ( tar)
                 character(len=:), pointer :: f1(:)
                 character(len=:), pointer :: f2(:)
                 character(len=:), pointer :: f3(:)
                 character(len=:), target, allocatable :: tar(:)
                 end function
                 function f2( tar)
                 character(len=:), pointer :: f2(:)
                 character(len=:), target, allocatable :: tar(:)
                 end function
                 function f3( tar)
                 character(len=:), pointer :: f3(:)
                 character(len=:), target, allocatable :: tar(:)
                 end function
        end interface        
        character(len=:), target, allocatable::trg(:)
        character(len=:), target, allocatable::ctrg(:)
        character(len=:), target, allocatable::rtrg(:)
        allocate(character(len=3)::trg(2))
        allocate(character(len=2)::ctrg(3))
        allocate(character(len=4)::rtrg(2))
        trg = (/"abc","ddd"/)
        ctrg = (/"aa","bb","cc"/)
        rtrg = (/"1234","5678"/)
        f1(trg) = ["xyz","klm"]
        if(all(trg /= ["xyz","klm"])) print *,101,trg
        if(len(trg) /= 3) print *,201
        if(size(trg) /= 2) print *,301
        f2(ctrg)= (/"mm","dd","yy"/)
        if(all(ctrg /=["mm","dd","yy"])) print *,102,ctrg
        if(len(ctrg) /= 2) print *,202
        if(size(ctrg) /= 3) print *,302
        f3(rtrg)= ["grep","find"]
        if(all(rtrg /=["grep","find"])) print *,103,rtrg
        if(len(rtrg) /= 4) print *,203
        if(size(rtrg) /= 2) print *,303
        print *,"Pass"
        end subroutine

