program WhereStruct
   implicit none
   integer :: a(2:6),vec(6)
   a = 0
   vec = (/ 3,0,0,0,5,0 /)
   where ( vec > 0 )
      a(vec) = vec
   end where
   write(1,*) a
   a = 0
   vec = (/ 3,0,6,0,5,2 /)
   where ( vec > 0 )
      a(vec) = vec
   end where
   write(1,*) a
  print *,'pass'
   stop
end program WhereStruct
