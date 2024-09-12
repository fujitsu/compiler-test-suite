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
          private
          public :: m3_s
          contains
           subroutine m3_s()
             write(1,*)100
           end
        end
    use m2
    use m3
    use m0
         implicit none
         print*,"pass"
        end

