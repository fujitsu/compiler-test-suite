      program main
      logical * 4 ls(10)  ,rl(10)
      data rl/.true.,.false.,.true.,.false.,.true.
     +     ,  .false.,.true.,.false.,.true.,.false./
      do 20 i=1,10
        if (rl(i)) then
          ls(1) = .not.rl(i)
        endif
  20  continue
      write(6,*) '*** logical data ** ls(1) = .false. = ' , ls(1)
      stop
      end
