   integer :: j, i
   integer, dimension(1:100) :: vec
   real(8) :: result
   real(8),parameter :: ans=100.0
 
   do j=1, 4
       do i=1, 6
         vec(1:100) = mem_leak()
       enddo
   enddo
   
   result = sum(vec)
   if (result .eq. ans ) then
     print *,"ok"
   else
     print *,"ng",result,ans
  endif

 contains
 
   pure function mem_leak() result(vec)
     integer, dimension(1:100) :: vec
     vec = 1
   end function mem_leak
 end
