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
          public::m2_gen
          interface m2_gen
            procedure::mod_f
          end interface
        end
        module m3
          use mod
          use m0
          interface m3_gen
            procedure::mod_f
          end interface
          private
          public :: m3_gen
        end
    use m2
    use m3
         implicit none
         print*,"pass"
        end

