      program main
       character(len=20) :: data  
       character(len=80) :: blank=' '
       character(len=80) :: out
       integer :: len,left
       intrinsic len_trim
       write (7,'(a20)') 'center'
       rewind 7
       read(7,'(a20)') data
       len =len_trim(data)
       left=40-len/2
       out=blank(1:left)//data
       write (*,'(a80)') out
       print *,'pass'
      end program main
