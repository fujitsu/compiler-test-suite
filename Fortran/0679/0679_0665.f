      program main
       real * 8 da(10) ,db(10)
       real * 4 rsm
       complex * 8 cda(10),cdb(10)
       logical * 4 l4a(10)
       data da/1.,2.,3.,4.,5.,6.,7.,8.,9.,0./
       data db/11.,12.,13.,14.,15.,16.,17.,18.,19.,10/
       data l4a/.false.,.true.,.false.,.true.,.false.
     +    ,     .true.,.false.,.true.,.false.,.true./
       data cda/10*(1.,1.)/,cdb/10*(1.,1.)/
       data rsm/0./
       do 10 i1=1,10
         if (l4a(i1)) then
           do 11 i2=1,10
             if (l4a(i2)) then
               cda(i1) = cmplx(da(i1),db(i2))
               cdb(i1) = imag(cda(i1))
               rsm = rsm + cabs(cdb(i1))
             endif
 11        continue
         endif
 10    continue
      write(6,*) '** rsm =375.  =', rsm
      write(6,*) '** cda , cdb **' , cda , cdb
      stop
      end
