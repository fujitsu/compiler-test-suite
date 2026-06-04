         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
         end type
          type ty
            class(AbstractToken), pointer :: token
          end type
          type(ty)::obj
          type(ty)::obj2
             allocate(AnchorToken::obj%token)
                  select type(qq => obj%token)
                    type is (AnchorToken)
                      call sub2(obj%token)
                      select type(qq=>obj%token)
                        type is (AnchorToken)
                          if(qq%x.ne.15)print*,"405"
                          qq%x =10
                          call sub2(obj%token)
                          select type(qq=>obj%token)
                             type is (AnchorToken) 
                              if(qq%x.ne.15)print*,"504"
                              allocate(AbstractToken::obj2%token)
                              select type(qq=>obj2%token)
                               type is (AnchorToken)
                                 print*,"601"
                               type is (AbstractToken)
                                 call sub2(obj2%token)
                                 if(qq%x.ne.25)print*,"650"
                           end select
                           end select
                      end select
                     type is (AbstractToken)
                     print*,"802"
                  end select
         contains
         subroutine sub2(t1)
            class(*) ::t1
            select type(qq =>t1)
               type is (AnchorToken)
                          qq%x =15
               type is (AbstractToken)
                          qq%x =25
            end select
         end
        end
        print *,'pass'
        call s1
        end


