       module moda
       integer,public     :: ip
       integer,public ,allocatable    :: ipa(:)
       contains
         subroutine init()
         allocate(ipa(10))
         end subroutine
       end module

       subroutine ext
       use moda
       ip = 1
       call init()
       end subroutine ext

       call ext()
       end
