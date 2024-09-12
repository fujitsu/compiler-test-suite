      program main
      logical l1,l2
      data l1,l2/.false. , .true./
      if ( l1 .eqv. .false. ) then
         write (6,*) 'OK-11'
      else
         write (6,*) 'NG-11'
      endif
      if ( l1 .eqv. .true. ) then
         write (6,*) 'NG-12'
      else
         write (6,*) 'OK-12'
      endif
      if ( l2 .eqv. .false. ) then
         write (6,*) 'NG-13'
      else
         write (6,*) 'OK-13'
      endif
      if ( l2 .eqv. .true. ) then
         write (6,*) 'OK-14'
      else
         write (6,*) 'NG-14'
      endif
      if ( l1 .neqv. .false. ) then
         write (6,*) 'NG-21'
      else
         write (6,*) 'OK-21'
      endif
      if ( l1 .neqv. .true. ) then
         write (6,*) 'OK-22'
      else
         write (6,*) 'NG-22'
      endif
      if ( l2 .neqv. .false. ) then
         write (6,*) 'OK-23'
      else
         write (6,*) 'NG-23'
      endif
      if ( l2 .neqv. .true. ) then
         write (6,*) 'NG-24'
      else
         write (6,*) 'OK-24'
      endif
      end
