      integer,dimension(3) ::j1,j2,j3,j4,j5
      n=0

      j1=(/1,1,1/)
      j2=(/1,1,1/)
      j3=(/1,1,1/)
      j4=(/1,1,1/)
      j5=(/1,1,1/)
      if ( any(j1/=1) .and. any(j2/=1) .and. any(j3/=1) .and. &
           any(j4/=1) .and. any(j5/=1) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif
      if ( any(j1/=1) .or. any(j2/=1) .or. any(j3/=1) .or. &
           any(j4/=1) .or. any(j5/=1) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      j1=(/1,1,1/)
      j2=(/1,1,2/)
      j3=(/1,1,1/)
      j4=(/1,1,2/)
      j5=(/1,1,2/)
      if ( (any(j1/=1) .or. any(j2/=1)) .and. &
           (any(j3/=1) .or. any(j4/=1)) .and. any(j5/=1) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      j1=(/1,1,1/)
      j2=(/1,1,1/)
      j3=(/1,1,1/)
      j4=(/1,1,1/)
      j5=(/1,1,2/)
      if (((any(j1/=1) .or. any(j2/=1)) .and. &
           (any(j3/=1) .or. any(j4/=1))) .or. any(j5/=1) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (((any(j1/=1) .or. any(j2/=1)) .and. &
           (any(j3/=1) .or. any(j4/=1))) .or. any(j5/=1) ) goto 100
      write(6,*) "NG"
  100 continue

      if (n/=4.and..true.) write(6,*) "NG"
      print *,'pass'
      end
