                  subroutine s1
                  type AbstractToken
                    integer::x
                  end type
                  type,extends(AbstractToken)::AnchorToken
                    character(:),pointer:: value
                  end type
        
                     class(AbstractToken), allocatable :: token
                   type (AbstractToken):: name
                    allocate(AnchorToken :: token)
                    name%x=5
       
                          select type(qq => token)
                          type is (AnchorToken)
                             token  = name
                             if(token%x .ne. 5)print*,"101"
                          end select
                end
                 call s1
                 print *,'pass'
                end

