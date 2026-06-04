         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
        
            class(AbstractToken), allocatable :: token
             allocate(AnchorToken::token)
                  select type(qq => token)
                    type is (AnchorToken)
                          qq%x =10
                          deallocate(token)
                    type is (AbstractToken)
                          print*,"101"
                    end select
                    allocate(AbstractToken::token)
                    select type(qq=>token)
                      type is (AbstractToken)
                          qq%x =10
                          if (allocated(token)) deallocate(token)
                       type is (AnchorToken)
                          print*,"801"
                          print*,allocated(token)
                    end select
        end
        print *,'pass'
        call s1
        end


