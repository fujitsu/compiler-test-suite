   call s1
   print *,'pass'
   end
   subroutine s1
    implicit none
    integer :: i,ios,rl
    do i = 8,16,8
      open(unit=11,iostat=ios,status="scratch", &
            access="direct", action="readwrite",recl=i)
      write(1,'(a,i3)') 'ios=',ios
      inquire(unit=11,iostat=ios,recl=rl)
      write(1,'(a,i3)') 'ios=',ios
      write(1,'(a,i3)') 'rl=',rl
    end do
 end
