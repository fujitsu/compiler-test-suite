subroutine s1
type AbstractToken
  integer::x
end type
type,extends(AbstractToken)::AnchorToken
  character(:),pointer:: value
end type

   class(AbstractToken), allocatable,target :: token
   class(AbstractToken), pointer    :: tmp_token
    character(:), allocatable :: anchor

          tmp_token      => token
          select type(qq => tmp_token)
          type is (AnchorToken)
             anchor = qq%value
             if (allocated(token)) deallocate(token)
          end select
end
print *,'sngg796j : pass'
end
