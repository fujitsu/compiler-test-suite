        module m0
         integer :: ii = 0
         contains
           function f3()
            integer :: f3
            f3 = 100
           end
           function f4()
            integer :: f4
             f4 = 200
             ii = ii + 1
          end
        end
        module MPI
         contains
           function f1()
            integer :: f1
            f1 = 10
           end
           function f2()
            integer :: f2
            f2 = 20
           end
        end

        module u0MPI
         use MPI
        end

        module m2
         use u0MPI
          private
          procedure(f1),pointer :: pprc
        end

        module m3
          use MPI
          use m0
          procedure(f2),pointer :: pprc2=>f2
          private
          public :: s3,f4,pprc2
          contains
           subroutine s3(d1)
            procedure(f2) :: d1
              ii = d1()
           end
        end

        use m3
        use m2
        use m0
         implicit none
         call s3(f4)
         if(pprc2() .ne. 20) print*,"120"
         if(ii .ne. 200) print*,"121"
         print*,"pass"
        end

