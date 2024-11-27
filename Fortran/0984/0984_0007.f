      structure /tag/
        integer   i(10) /1,2,3,4,5,6,7,8,9,10/
      end structure
      record /tag/ a(10)
      write(6,*) ((a(m).i(n),n=1,10),m=1,10) 
      end
