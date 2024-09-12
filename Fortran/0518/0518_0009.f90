        module m0
         integer :: ii = 5
         contains
           function f3()
            f3 = 100
           end function
        end
        module mod
         contains
           function f1()
            f1 = 10
           end function
        end
        module m2
         use mod
         integer :: ii = 2
          private
          public::pprc,m2_s
          procedure(f1),pointer :: pprc
          contains
            subroutine m2_s
               pprc=>f1
            end
        end
        module m3
          use mod
          use m0
          procedure(f1),pointer :: pprc2=>f1
          private
          public :: s3,pprc2
          contains
           subroutine s3(d1)
            procedure(f1),intent(in),pointer :: d1
             if(  d1()/=200)print *,2001
           end
        end
    use m2
    use m3
    use m0
         implicit none
         print*,"pass"
        end

