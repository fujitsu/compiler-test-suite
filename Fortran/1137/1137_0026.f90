subroutine s1
type AbstractToken
  integer::x
end type
type,extends(AbstractToken)::AnchorToken
  character(:),pointer:: value
end type

   class(AbstractToken), allocatable :: token
    character(:), allocatable :: anchor

          select type(qq => token)
          type is (AnchorToken)
             anchor = qq%value
             if (allocated(token)) deallocate(token)
          end select
end
print *,'sngg795j : pass'
end
