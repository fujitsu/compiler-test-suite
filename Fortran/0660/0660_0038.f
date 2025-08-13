      program main
       integer :: i,j,i16,pos
       character(len=4) :: hex
       character(len=16) :: abc='0123456789ABCDEF'
       intrinsic verify,scan
       write (111,'(a4)') '001A'
       rewind 111
       read  (111,'(a4)') hex
       j=verify(hex,abc)
       if (j <= 0) then
          i16=0
          do i=1,4
             pos=scan(abc,hex(i:i))-1
             i16=i16+pos*16**(4-i)
          end do
          write (*,*) i16
        else
          write (*,*) '** error **',hex(j:j)
       end if
       write (112,'(a4)') '12GF'
       rewind 112
       read  (112,'(a4)') hex
       j=verify(hex,abc)
       if (j <= 0) then
          i16=0
          do i=1,4
             pos=scan(abc,hex(i:i))-1
             i16=i16+pos*16**(4-i)
          end do
          write (*,*) i16
        else
          write (*,*) '** error **',hex(j:j)
       end if
       write (113,'(a4)') '1A2B'
       rewind 113
       read  (113,'(a4)') hex
       j=verify(hex,abc)
       if (j <= 0) then
          i16=0
          do i=1,4
             pos=scan(abc,hex(i:i))-1
             i16=i16+pos*16**(4-i)
          end do
          write (*,*) i16
        else
          write (*,*) '** error **',hex(j:j)
       end if
       print *,'pass'
      end program main
