      call s1
      print *,'pass'
      end
 subroutine s1
call ss1
call ss2
end
subroutine ss1
write(1,'(a)') '  i=1'
write(1,'(a)') '  i=1'
write(1,'(a)') '& +1'
write(1,'(a)') '!   1'
write(1,'(a)') '? ; 1'
write(1,'(a)') '?   1'
write(1,'(a)') '  i=1'
rewind 1
end
subroutine ss2
	character line*132,type
	integer x,dx
	logical ::cont = .false.
	do
	   call next_line
	   do
	      select case (line(x:x))
		case (';')
		 type = '?'
		case ('&')
		 cont = .true.
		case ('"', "'")
		 do
		    dx = scan(line(x+1:), line(x:x))
		    if (dx > 0) exit
		    write(11,*) type//trim(line)
		    cont = .true.
		    call next_line
		    end do
		 x = x+dx
		case ('!')
		 exit
		 end select
	      x = x+1
	      if (x > len_trim(line)) exit
	      end do
	   write(11,*) type//trim(line)
	   end do
	contains
	subroutine next_line
	   read (1,'(a)',end=99) line
	   x = max(1,verify(line,' '))
	   select case (line(x:x))
	     case default
	      type = ' '
	     case ('0':'9')
	      type = '#'
	     case ('&')
	      x = x+1
	     case ('!', ' ')
	      type = '!'
	      return
	     end select
	   if (cont) type = '&'
	   cont = .false.
    return
99  continue
      print *,'pass'
      stop
    end subroutine
     99 end
