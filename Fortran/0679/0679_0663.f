      program main
      logical * 4 ls  ,rl(10)
      data rl/.true.,.false.,.true.,.false.,.true.
     +     ,  .false.,.true.,.false.,.true.,.false./
      do 20 i=1,10
        if(i.eq.5) ls = rl(i)
  20  continue
      write(6,*) '*** logical data ** ls = .true. = ' , ls
      stop
      end
