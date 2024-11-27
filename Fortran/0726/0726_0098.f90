      module first
      contains
         function convert(i) result(j)
         integer i, j
         j = i
         end function convert
      end module first
      module second
      use first
      private :: convert_second
      interface convert
         module procedure convert, convert_second
      end interface
      contains
         function convert_second(a) result(j)
         real a
         integer j
         j = a
         end function convert_second
      end module second
      program main
      use second
      integer k
      k = convert(1)   ; if (k/=1)write(6,*) "NG"
      k = convert(2.5) ; if (k/=2)write(6,*) "NG"
      print *,'pass'
      end program main
