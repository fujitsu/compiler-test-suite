        module m0
         integer :: ii = 5
         contains
           function m0_f()
            m0_f = 100
           end function
        end
        module mod
         contains
           function mod_f()
            mod_f = 10
           end function
        end
        module m2
         use mod
         integer :: ii = 2
          private
          public::pprc,m2_s
          procedure(mod_f),pointer :: pprc
          contains
            subroutine m2_s
               pprc=>mod_f
            end
        end
        module m3
          use mod
          use m0
          procedure(mod_f),pointer :: pprc2=>mod_f
          private
          public :: s3,pprc2,m0_f
          contains
           subroutine s3(d1)
            procedure(mod_f),intent(in),pointer :: d1
             if(  d1()/=200)print *,2001
           end
        end
    use m2
    use m3
    use m0
         implicit none
         print*,"pass"
        end

