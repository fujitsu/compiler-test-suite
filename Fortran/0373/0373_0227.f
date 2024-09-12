      program main
      integer(kind=8) :: i,j
      integer(kind=8) :: fmult,fdiv
      i = fmult(1_8, 2_8, 3_8)
      j = fdiv (1_8, 2_8, 3_8)
      if ((i.eq.36_8) .and. (j.eq.1_8)) then
        print *,'OK '
      else
        print *,'NG  i:',i,'  j:',j
      endif
      end

      function fmult(a,b,c)
      integer(kind=8) :: fmult
      integer(kind=8) :: a,b,c
      integer(kind=8) :: i,x,y,z
      x = a*a
      y = b*b
      z = c*c
      call func(x,y,z)
      i = x*y*z
      fmult = i
      end function

      function fdiv(a,b,c)
      integer(kind=8) :: fdiv
      integer(kind=8) :: a,b,c
      integer(kind=8) :: i,x,y,z
      x = a/a
      y = b/b
      z = c/c
      call func(x,y,z)
      i = x/y/z
      fdiv = i
      end function

      subroutine func(a,b,c)
      integer(kind=8) :: a,b,c
      end subroutine
