        module modc
          private
          integer,dimension(10):: a
          contains
          subroutine mods1
            a(2)=1
            call mods2
            if ( a(2).ne.2 ) then
              print *,' NG '
              return
            endif
            print *,' NG because call modc.mods1'
          end subroutine mods1
          subroutine mods2
            a(2)=2
            return
          end subroutine mods2
       end module modc
       program main
       use modc
       call mods1
       call mods2
       contains
         subroutine mods2
         print *,'I''m internal subroutine mods2 '
         return
         end subroutine mods2
       end program main
       subroutine mods1
       print *,'I''m subroutine mods1'
       return
       end subroutine
