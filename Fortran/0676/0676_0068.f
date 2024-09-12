      program main
      real*4 l1,l2
      data l1/0.0/,l2/1.0/
      if ( l1 .eq. 0 ) then
         write (6,*) 'OK-11'
      else
         write (6,*) 'NG-11'
      endif
      if ( l1 .eq. 1 ) then
         write (6,*) 'NG-12'
      else
         write (6,*) 'OK-12'
      endif
      if ( l2 .eq. 0 ) then
         write (6,*) 'NG-13'
      else
         write (6,*) 'OK-13'
      endif
      if ( l2 .eq. 1 ) then
         write (6,*) 'OK-14'
      else
         write (6,*) 'NG-14'
      endif
      if ( l1 .ne. 0 ) then
         write (6,*) 'NG-21'
      else
         write (6,*) 'OK-21'
      endif
      if ( l1 .ne. 1 ) then
         write (6,*) 'OK-22'
      else
         write (6,*) 'NG-22'
      endif
      if ( l2 .ne. 0 ) then
         write (6,*) 'OK-23'
      else
         write (6,*) 'NG-23'
      endif
      if ( l2 .ne. 1 ) then
         write (6,*) 'NG-24'
      else
         write (6,*) 'OK-24'
      endif
      end
