      program main
       real * 4 a(10)   , s(10)
       logical * 4 ls(10)
       data a/0.,1.,2.,3.,4.,5.,6.,7.,8.,9./

       do 10 i=1,10
        s(1) = a(i) + 1.
 10    continue

       do 20 i=1,10
        ls(1) = a(i).eq.i
 20    continue
       write(6,*) '** real data ** s(1) = 10. = ',  s(1)
       write(6,*) '** logical daat ** ls(1) = .false. = ' , ls(1)
       stop
       end
