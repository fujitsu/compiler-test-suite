  program main

    integer :: i=0,j=0,k=0,l=0
    character*3 :: ic1,jc1,kc1,lc1
    character*3 :: ic0,jc0,kc0,lc0
    character*3 :: ic00,jc00,kc00,lc00

    integer :: error = 0

    open (10,file='test')

    write (10,'("#",i1,"#")') i
    write (10,'("#",b1,"#")') j
    write (10,'("#",o1,"#")') k
    write (10,'("#",z1,"#")') l

    write (10,'("#",i0,"#")') i
    write (10,'("#",b0,"#")') j
    write (10,'("#",o0,"#")') k
    write (10,'("#",z0,"#")') l

    write (10,'("#",i0.0,"#")') i
    write (10,'("#",b0.0,"#")') j
    write (10,'("#",o0.0,"#")') k
    write (10,'("#",z0.0,"#")') l

    rewind(10)

    read (10,'(a3)') ic1
    read (10,'(a3)') jc1
    read (10,'(a3)') kc1
    read (10,'(a3)') lc1

    read (10,'(a3)') ic0
    read (10,'(a3)') jc0
    read (10,'(a3)') kc0
    read (10,'(a3)') lc0

    read (10,'(a3)') ic00
    read (10,'(a3)') jc00
    read (10,'(a3)') kc00
    read (10,'(a3)') lc00

    close (10,status='delete')

    if (any((/ic1/="#0#",jc1/="#0#",kc1/="#0#",lc1/="#0#"/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    end if

    if (any((/ic0/="#0#",jc0/="#0#",kc0/="#0#",lc0/="#0#"/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    end if

    if (any((/ic00/="# #",jc00/="# #",kc00/="# #",lc00/="# #"/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
