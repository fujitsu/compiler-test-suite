real*4 a,z
integer*4 i,xx
character*20 okstring, ngstring
character*5 tail
      okstring = ' ***** TEST is OK '
      ngstring = ' ***** TEST is NG '
      tail = '*****'

      if ( okstring//tail < ngstring//tail ) then 
         write (6,*) ngstring//tail
         stop
      endif
      a = z ()
      i = xx ()
      if (a < 6000.0 .and. i .eq. 100) then
         write (6,*) okstring//tail
      else
         write (6,*) ngstring//tail
      end if
      end

logical*4 function bs (mat, int)
  integer*4 mat (3,2,1)
  intent (in out) :: mat
  integer*4 int
  intent (in) :: int
      bs = .false.
      where (mat > int) 
         mat = mat - int
      else where
         mat = int
      end where
      if (sum (mat) .gt. int*3*2) bs = .true.
end function

logical*4 function ss (a,b)
  integer ,dimension(1,1,1),intent(in)::a
  integer ,dimension(1,1),intent(in)::b
      ss = .false.
      if (sum (a) .eq. 17 * sum (b (1:1,1))) ss = .true.
end function

real*4 function z()
interface operator (.or.)
  logical*4 function bs (mat, int)
    integer*4 mat (3,2,1)
    intent (in) :: mat
    integer*4 int
    intent (in) :: int
  end function bs
end interface
      z = 1.65e-8

      if (reshape ((/20,(j,j=14,17),30/),(/3,2,1/)) .or. 6) then
         z = z * 3.22e+11
      else if (.not. .true. ) then
         z = 6.22+4
      end if
      return 
end function z

integer*4 function xx ()
interface operator (//)
  logical*4 function ss (a,b)
    integer ,dimension(1,1,1),intent(in)::a
    integer ,dimension(1,1),intent(in)::b
  end function
end interface

      if (reshape ((/17/),(/1,1,1/)) // &
          dim (reshape ((/3/),(/1,1/)), reshape ((/2/),(/1,1/)))) then
         xx = 100
      else
         xx = -100
      end if
      return 
end function
