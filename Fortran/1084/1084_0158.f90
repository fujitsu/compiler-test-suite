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
                      if (allocated(token)) then
                          deallocate(token)
                      endif
                      allocate(AbstractToken::token)
                      select type(qq=>token)
                        type is (AbstractToken)
                          qq%x =10
                          if (allocated(token)) deallocate(token)
                          allocate(AnchorToken::token)
                          call sub2(token)
                           select type(qq=>token)
                             type is (AnchorToken) 
                              if(qq%x.ne.15)print*,"304"
                           end select
                      end select
                     type is (AbstractToken)
                     print*,"802"
                  end select
         contains
         subroutine sub2(t1)
            class(AbstractToken), allocatable ::t1
            select type(qq =>t1)
               type is (AnchorToken)
                          qq%x =15
               type is (AbstractToken)
                     print*,"812"
            end select
         end
        end
        print *,'pass'
        call s1
        end


