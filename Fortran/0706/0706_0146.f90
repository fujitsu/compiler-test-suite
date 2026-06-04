c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      implicit type(t)(a-d)
      type t
        sequence
        character*10 name
        integer nn
      end type
      cc%name='2222222222'
      cc%nn  = 22
      a1%name='fortran'
      call inner
          if (c%name/='1111111111')print *,'fail'
          if (c%nn  /= 11         )print *,'fail'
      contains
        subroutine inner
          implicit type(t)(d)
          type t
           sequence
           integer n
           integer m
          end type
          d%n=10
          call sub1(c)
          call sub2(cc)
          if (d%n/=10)print *,'fail'
        end subroutine
      end subroutine
      subroutine sub1(b)
      implicit type(t)(a-d)
      type t
        sequence
        character*10 name
        integer nn
      end type
      b%name='1111111111'
      b%nn  = 11
      end subroutine
      subroutine sub2(cc)
      implicit type(t)(a-d)
      type t
        sequence
        character*10 name
        integer nn
      end type
          if (cc%name/='2222222222')print *,'fail'
          if (cc%nn  /= 22         )print *,'fail'
      end subroutine
