      program main
      logical x
      call set(x)
      if ( x .eqv. .false. ) then
         if ( x .eqv. .false. ) then
            write (6,*) 'OK-11'
         else
            write (6,*) 'NG-11'
         endif
      else
         if ( x .eqv. .true. ) then
            write (6,*) 'OK-12'
         else
            write (6,*) 'NG-12'
         endif
      endif
      if ( x .eqv. .true. ) then
         if ( x .eqv. .false. ) then
            write (6,*) 'NG-21'
         else
            write (6,*) 'OK-21'
         endif
      else
         if ( x .eqv. .true. ) then
            write (6,*) 'NG-22'
         else
            write (6,*) 'OK-22'
         endif
      endif

      do i=1,10
         x=i
         if ( x .eqv. .true. ) then
            write (6,*) 'OK-31',i
         else
            write (6,*) 'NG-31',i
            write (6,*) 'i=',i
            write (6,*) 'x=',x
         endif
      enddo
      end

      subroutine set(x)
      logical x
      print *, "subroutine set"
      x=.false.
      end
