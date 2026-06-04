         module m11
         type ty
            integer :: aa
         end type ty
         type, extends(ty):: ts
         integer :: bb
         end type ts

        INTERFACE GEN
         SUBROUTINE S1 (J, Pty)
         import ty
         INTEGER::J
         class(ty),pointer :: Pty
         END SUBROUTINE S1

         SUBROUTINE S2 (K, Pts)
         import ts
         INTEGER K
         integer,pointer:: Pts
         END SUBROUTINE S2
         END INTERFACE
       end module  

        use m11 
        class(ty),pointer ::obj1
        CALL GEN(7, NULL(obj1))
        CALL S1 (7, NULL(obj1))
rewind 1
read(1,*) k
if (k/=1) print *,1011
read(1,*) k
if (k/=1) print *,1011
        print*,"pass"
        end

        SUBROUTINE S1 (J, Pty)
         use m11
         INTEGER::J
         class(ty),pointer:: Pty
write(1,*) 1
        END SUBROUTINE S1

        SUBROUTINE S2 (K, Pts)
         use m11
         INTEGER K
         integer,pointer:: Pts
write(1,*) 2
        END SUBROUTINE S2
