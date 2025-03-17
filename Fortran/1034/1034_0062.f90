       complex*8 cgl,cfunc1
       cgl = cfunc1()
       if(abs(cgl-(6,0))>0.0001)print *,'error'
       print *,'pass'
       end
       complex*8 function cfunc1()
       complex*8 a(10)/1,2,3,4,5,6,7,8,9,10/,zmax

        do 3100 k=1,6
         zmax = a(k)
         cfunc1 = cabs(zmax)
 3100    continue

       return
       end
