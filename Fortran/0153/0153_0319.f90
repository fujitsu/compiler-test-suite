program binary_io

  implicit none

  integer :: ifile_stream, ifile_binary
  integer :: i, itemp
  integer :: idata(4)
  character(256) :: cfile_stream, cfile_binary

  ifile_stream = 11
  ifile_binary = 12
  do i = 1, 4
     idata(i) = i
  end do

  write(cfile_stream, '(a)') 'fort.998'
  write(cfile_binary, '(a)') 'fort.997'

  open(ifile_stream, file=cfile_stream, status='unknown', action='write', &
       form='unformatted', access='stream')
  open(ifile_binary, file=cfile_binary, status='unknown', action='write', &
       form='binary')

  write (103, *) "write stream and binary files"
  do i = 1, 4
     write (202, *) i, idata(i)
     write (ifile_stream) idata(i)
     write (ifile_binary) idata(i)
  end do

  close(ifile_stream)
  close(ifile_binary)

  open(ifile_stream, file=cfile_stream, status='old', action='read', &
       form='unformatted', access='stream') 
  open(ifile_binary, file=cfile_binary, status='old', action='read', &
       form='binary') 

  write (103, *) "read stream file"
  do i = 1, 2
     read(ifile_stream) itemp
     write (202, *) i, itemp
  end do

  write (103, *) "rewind stream file"
  rewind(ifile_stream)

  do i = 3, 4
     read(ifile_stream) itemp
     write (202, *) i, itemp
  end do

  write (203, *) "read binary file"
  do i = 1, 2
     read(ifile_binary) itemp
     write (202, *) i, itemp
  end do

  write (103, *) "rewind binary file"
  rewind(ifile_binary)

  do i = 3, 4
     read(ifile_binary) itemp
     write (202, *) i, itemp
  end do

  close(ifile_stream)
  close(ifile_binary)

call check
print *,'pass'

end program binary_io
subroutine check
integer a(2)
rewind 202
do k=1,4
 read(202,*) a
 if (any(a/=k)) print *,101,k,a
end do
do k=1,2
 read(202,*) a
 if (any(a/=k)) print *,102,k,a
end do
 read(202,*) a
 if (any(a/=[3,1])) print *,103,a
 read(202,*) a
 if (any(a/=[4,2])) print *,104,a
do k=1,2
 read(202,*) a
 if (any(a/=k)) print *,202,k,a
end do
 read(202,*) a
 if (any(a/=[3,1])) print *,203,a
 read(202,*) a
 if (any(a/=[4,2])) print *,204,a
end
