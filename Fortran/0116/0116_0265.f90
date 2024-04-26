   integer :: j, i
   real, dimension(1:100) :: vec
     real,dimension(10,10) :: array_a,array_b
   real(8) :: result
   real(8),parameter :: ans=10000.0
 
   array_a = 2.0
   array_b = 1.0
   do j=1, 4
       do i=1, 6
         vec = func_hhhh(array_a,array_b)
       enddo
   enddo

   result = sum(vec)
   if (result .eq. ans ) then
     print *,"ok"
   else
     print *,"ng",result,ans
  endif
 contains
 
   pure function func_hhhh(array_a,array_b) result(rval)
     real,dimension(10,10),intent(in) :: array_a,array_b
     real, dimension(1:100) :: rval
     rval = sum(array_a)
     rval = rval - sum(array_b)
   end function func_hhhh
 end
