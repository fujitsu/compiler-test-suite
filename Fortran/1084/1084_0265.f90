         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
        
            class(AbstractToken),pointer :: token
             allocate(AnchorToken::token)
                  select type(qq => token)
                    type is (AnchorToken)
                      if (associated(token)) then
                          NULLIFY(token)
                          !print*,"1001"
                      endif
                      allocate(AbstractToken::token)
                      select type(qq=>token)
                        type is (AbstractToken)
                          qq%x =10
                          if (associated(token)) NULLIFY(token)
                         type is (AnchorToken)
                          print*,"801"
                      end select
                     type is (AbstractToken)
                     print*,"802"
                  end select
        end
        print *,'pass'
        call s1
        end


