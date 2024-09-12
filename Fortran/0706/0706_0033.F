      call s1
      print *,'pass'
      end
      subroutine s1
      call set_up

  call     transcription
	call search
      open  (81,file='phone.txt')
      close (81,status='delete')
      open  (2,file='phone.db')
      close (2,status='delete')
	open (83,file='phone.lng')
	close(83,status='delete')
      end
 subroutine set_up
	open (1,file='phone.txt',status='replace',		&
	      position='rewind',action='readwrite',		&
	      iostat=ios,err=99)
write(1,*) 'John Doe   / 555-4321'
write(1,*) 'Jane Doe   / 555-1234'
close(1)
return
99 print *,'error '
stop
end
      subroutine &
	        transcription
	character name*132,phone*132
	open (1,file='phone.txt',status='old',		&
	      position='rewind',action='read',		&
	      iostat=ios,err=99)
	call determine_longest
	if (ios > 0) go to 99
	inquire (iolength=longest)			&
	        name(:long_n), phone(:long_p)
	open (2,file='phone.db',status='replace',	&
	      access='direct',action='readwrite',	&
	      recl=longest,iostat=ios,err=99)
	do k = 1,nrec
	   call read_name_and_phone
	   if (ios /= 0) exit
	   write (2,rec=k,iostat=ios,err=99)		&
	         name(:long_n), phone(:long_p)
	   end do
        if (ios <= 0) write(91,*) 'Fail end'
        return
     99 if (ios > 0) print *, 'ERROR: iostat=',ios
        stop
	contains
	subroutine determine_longest
	   long_n = 0 ; long_p = 0
	   do k = 1,huge(0)
	      call read_name_and_phone
	      if (ios /= 0) exit
	      long_n = max(long_n,len_trim(name))
	      long_p = max(long_p,len_trim(phone))
	      end do
	   nrec = k - 1
	   if (ios > 0) go to 99
	   rewind (1)
	   open (2, iostat=ios,file='phone.lng',	&
	       status='replace',position='rewind',	&
	       action='readwrite',err=99)
	   write (2,*) nrec,long_n,long_p
	   close (2,iostat=ios)
       99  end subroutine determine_longest

	subroutine read_name_and_phone
	   character line*132
	   integer sep
	   read (1,'(a)',iostat=ios) line
           if (ios/=0)return
	   sep = index(line,'/')
	   name = adjustl(line(:sep-1))
	   phone = adjustl(line(sep+1:))
	   end subroutine read_name_and_phone
	end subroutine transcription
	subroutine search
	character*132 ::line,fld(2) = ''
    logical found
	open (1,file='phone.lng',status='old',		&
	      position='rewind',action='read',		&
	      iostat=ios,err=99)
	read (1,*) nrec,long_n,long_p
	close (1)
	inquire (iolength=longest)			&
	        fld(1)(:long_n),fld(2)(:long_p)
	open (2,file='phone.db',status='old',		&
	      access='direct',action='readwrite',	&
	      recl=longest,iostat=ios,err=99)
	do
	   write (11,'(a)',advance='no')			&
	         'Name or #Phone Number: '
	   read (1,'(a)',end=88) line
	   if (line == '') go to 88
	   found = .false.
	   if (line(1:1) == '#') then
	      line = line(2:)
	      call search_field (2)
	     else
	      call search_field (1)
	     end if
	   end do
     88 write(17,*) 'file end'
        return
     99 print *, 'failel abnormal'
        stop
	contains
	subroutine search_field (n)

	   found = .false.
	   do k = 1,nrec
	      read (2, rec=k)				&
	           fld(1)(:long_n),fld(2)(:long_p)
	      match = index(fld(n),trim(line))
	      if (match /= 0) then
	         print *, trim(fld(n)) // '=>'		&
	                  // trim(fld(3-n))
	         found = .true.
	         end if
	      end do
	   end subroutine search_field
	end subroutine search

