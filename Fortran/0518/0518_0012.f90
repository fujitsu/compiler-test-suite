        module m0
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
          private
          public::m2_s,m2_gen
          interface m2_gen
            procedure::mod_f
          end interface
          contains
            subroutine m2_s
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
         implicit none
         print*,"pass"
        end

