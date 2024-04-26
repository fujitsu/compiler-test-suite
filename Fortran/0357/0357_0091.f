        module modc
        contains
             subroutine modsub
               print *,'I''m mod''s sub.'
               call mdsbi1
               call foo

               return
             entry ent
               print *,'I''m ent.'
               return
               contains
                 subroutine mdsbi1
                   print *,'I''m mod''s sub1.'
                   call mdsbi2
                 end subroutine mdsbi1
                 subroutine mdsbi2
                   print *,'I''m mod''s sub2.'
                 end subroutine mdsbi2
             end subroutine
             subroutine foo
               print *,'I''m foo.'
             end subroutine
        end
c
        program main
        use modc
        print *,'I''m main.'
        call sub
c
 	call modsub
 	call ent
 	call foo
        contains
             subroutine sub
               print *,'I''m main''s sub.'
               call modsub
               call ent
               call foo
               return
             end subroutine
        end program
