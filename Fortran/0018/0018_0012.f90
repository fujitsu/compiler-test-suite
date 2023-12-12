program main

integer,parameter, dimension (2,3) :: a = reshape((/1,2,3,4,5,6/), (/2,3/))

integer,dimension(2,3) :: b

integer,parameter, dimension(2) :: c = minloc( ARRAY = a , DIM = 2 , MASK  = a > 1,kind=8)

integer,dimension(2) :: d

integer,parameter::k= kind(minloc( ARRAY = a , DIM = 2 , MASK  = a > 1,kind=8))

b = reshape((/1,2,3,4,5,6/), (/2,3/))


d = minloc( ARRAY = b , DIM = 2 , MASK  = b > 1,kind=8)

do i = 1,2


if (c(i).NE.d(i)) then

 print *,'??? (Error: integer->integer) ???'

else


endif

end do


call check1(k,kind(minloc( ARRAY = b , DIM = 2 , MASK  = b > 1,kind=8)))
 print *,'OK'

end


  subroutine check1(x,y)
  integer x,y
  if (x.ne.y) then
  print *,'??? (KIND Error:) ???'
  else
  endif
  end subroutine
