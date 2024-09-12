        module mod
         interface gen1
           procedure::f1
         end interface
         contains
           function f1()
            f1 = 1
           end function
        end
        module m2
         use mod
         integer :: ii = 2
          private
          public::ii 
        end
        module m3
          use mod
          public :: s3
          contains
           subroutine s3(n)
             if (n/=1) print *,1002
             if (f1()/=1) print *,1003
             if (gen1()/=1) print *,1004
           end
        end
    use m2
    use m3
         implicit none
         call s3(1)
         if(ii .ne. 2) print*,"121",ii
         print*,"pass"
        end

