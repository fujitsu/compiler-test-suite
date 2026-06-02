         subroutine s1
         type AbstractToken
           integer::x =10
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
        
            class(AbstractToken),pointer :: token
             allocate(token)
                  select type(qq => token)
                    type is (AnchorToken)
                        print*,"801"
                       class is (AbstractToken)
                        select type(rr =>qq)
                         class is (AnchorToken)
                           print*,"801"
                         class is (AbstractToken)
                            select type(kk =>rr)
                             type is (AbstractToken)
                                kk%x =10
                                if (associated(token)) deallocate(token)
                                print *,'pass'
                            end select
                      end select
                    end select
              if (associated(token)) print*,"201"
        end
        call s1
        end


