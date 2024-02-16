   integer :: j, i
   integer, dimension(1:100) :: vec
 
   do j=1, 4
       do i=1, 6
         vec(1:100) = mem_leak()
       enddo
   enddo
   print *,'pass'
 contains
 
   pure function mem_leak() result(vec)
     integer, dimension(1:100) :: vec
     vec = 1
   end function mem_leak
 end
