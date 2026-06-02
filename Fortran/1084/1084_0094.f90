         subroutine s1
         type AbstractToken
           integer::x
         end type
         type,extends(AbstractToken)::AnchorToken
           character(len=1),pointer:: value
         end type
        
            class(AbstractToken), allocatable :: token
            allocate(token)
            select type(qq => token)
                  class default
                    print*,"103"
                  type is (AnchorToken)
                     if (allocated(token)) deallocate(token)
                  type is (AbstractToken)
                     if (allocated(token)) deallocate(token)
             end select
            if(allocated(token))print*,"101"
        end
        print *,'pass'
        call s1
        end


