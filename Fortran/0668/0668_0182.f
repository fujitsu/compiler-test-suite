      integer*4 i800a(10),i800b(10),i800c(10)
      integer*4 i800x(10),i800y(10),i8a/9/
      integer*4 i400a(10)
      data    i800a/10*0/,i800b/10*0/,i800c/10*0/
     &        i800x/3,4,5,7,1,2,0,4,3,5/,
     &        i800y/-3,-4,-5,-7,-1,-2,0,-4,-3,-5/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3/
      do 10 i=1,10
        if(i400a(i).gt.0) then
          i800a(i) = not(not(not(not(not(i800x(i))))))
        elseif(i400a(i).eq.0) then
          i800b(i) = iand(iand(iand(iand(i800y(i),i8a),i8a),i8a),i8a)
        elseif(i400a(i).lt.0) then
          i800c(i) = ior(ior(ior(ior(i800y(i),i8a),i8a),i8a),i8a)
        endif
   10 continue
      write(6,*) i800a
      write(6,*) i800b
      write(6,*) i800c
      stop
      end
