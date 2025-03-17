 character(len=255) :: fname
        logical :: exist
        fname = ' '
        inquire(file=fname,exist=exist)
        if (exist)print *,'error'
        print *,'pass'
 end
