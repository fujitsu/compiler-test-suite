      call s1
      print *,'pass'
      end
      subroutine s1
	character name*132,phone*132
	call determine_longest
	contains
	subroutine determine_longest
	      call read_name_and_phone
       99  end subroutine determine_longest

	subroutine read_name_and_phone
	   character line*132
	   integer sep
      sep=13
         line='123456789    /   71717171'
	   name = adjustl(line(:12))
	   phone = adjustl(line(sep+1:))
	   end subroutine read_name_and_phone
	end subroutine 
