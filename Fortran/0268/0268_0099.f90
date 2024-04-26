         integer,target::tar=20
call sub()
contains
subroutine sub()
         integer,pointer :: ptr=>tar
         integer,pointer :: ptr2
         data ptr2 /tar/
          if(associated(ptr2).neqv..true.)print*,"101"
          if(associated(ptr).neqv..true.)print*,"102"

          if(ptr2.ne.20)print*,"101"
          if(ptr.ne.20)print*,"102"
          print*,"PASS"
         end
end
