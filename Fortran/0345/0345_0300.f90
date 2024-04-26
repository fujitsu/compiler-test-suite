      module m
        type z5
         sequence
          integer(8),dimension(:),allocatable::ii
        end type
        type z4
         sequence
          type(z5)::zz
        endtype
        type z3
         sequence
          type(z4)::zz
        endtype
        type z2
         sequence
          type(z3)::zz
        endtype
        type z1
         sequence
          type(z2)::zz
        endtype
        type z0
         sequence
          type(z1)::zz
        endtype
      end module

      module m1
       use m
       type(z0)::zzz0
      contains
        subroutine sub0(zzz1)
         type(z0)::zzz1
          zzz1 = z0(z1(z2(z3(z4(z5((/1,2,3,4,5/)))))))
        end subroutine
      end module

      module m2
       use m
       use m1
      contains
        subroutine sub1(zzz1)
         type(z0)::zzz1
          if (any( zzz1%zz%zz%zz%zz%zz%ii /= (/1,2,3,4,5/) )) print *,'error'
        end subroutine
      end module

      program main
       use m2
       type(z0)::zzz1
        call sub0(zzz1)
        call sub1(zzz1)
        print *,'pass'
      end program
