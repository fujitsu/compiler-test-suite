       type  t(k)
       integer , kind :: k
       character  (k):: a1
       character *(k):: a2
       character  (8):: b1
       character *(8):: b2
       end type
       type (t(8)):: v
       if(kind(v%a1) .eq. 1 .and. kind(v%a2) .eq. 1) then
                if(kind(v%b1) .eq. 1 .and. kind(v%b2) .eq. 1) then
                print*,"Pass"
                end if
        end if
        end
