                  subroutine s1
                  type AbstractToken
                    integer::x
                  end type
                  type,extends(AbstractToken)::AnchorToken
                    character(:),pointer:: value
                  end type
        
                   class(AbstractToken), allocatable :: token(:)
                   type ty
                     class(AbstractToken), allocatable :: token(:)
                   end type
                   type(ty)::obj
                   type (AnchorToken):: name(5)
                    allocate(AbstractToken :: token(5))
                    name(1)%x=5
                    name(2)%x=5
                    name(3)%x=5
                    name(4)%x=5
                    name(5)%x=51
                    allocate(name(1)%value,source= "abcd")
       
                    select type(qq => token)
                       type is (AbstractToken)
                             token  = name
                             if(token(1)%x .ne. 5)print*,"101"
                             if(token(5)%x .ne. 51)print*,"112"
                     select type(qq => token)
                       type is (AbstractToken)
                            print*,"901"
                       type is (AnchorToken)
                             if(qq(1)%x .ne. 5)print*,"131"
                             if(qq(5)%x .ne. 51)print*,"132"
                             if(qq(1)%value.ne."abcd")print*,"301"
                             obj%token = token
                       class default
                             print*,"101"
                     end select
                    end select
                    select type(qq => obj%token)
                       type is (AbstractToken)
                             obj%token  = name
                             if(obj%token(1)%x .ne. 5)print*,"101"
                             if(obj%token(5)%x .ne. 51)print*,"132"
                     select type(qq => obj%token)
                       type is (AbstractToken)
                            print*,"901"
                       type is (AnchorToken)
                             if(qq(1)%x .ne. 5)print*,"131"
                             if(qq(5)%x .ne. 51)print*,"132"
                             if(qq(1)%value.ne."abcd")print*,"301"
                       class default
                             print*,"101"
                     end select
                    end select

                end
                 call s1
                 print *,'pass'
                end

