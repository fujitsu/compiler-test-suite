      integer*4 i800a(20),i800b(20),i800c(20)
      integer*4 i400a(20),i400x(20),i400y(20)
      data    i800a/20*1/,i800b/20*2/,i800c/20*7/
      data    i400a/1,1,0,-2,-3,2,1,1,2,3,0,0,0,0,0,0,0,0,0,1/
      data    i400x/2,2,3,3,4,4,5,5,6,6,8,8,10,10,12,12,14,14,16,16/
      data    i400y/2,3,4,6,11,4,1,20,1,5,6,9,17,20,18,19,2,3,10,16/
      do 10 i=1,20
        if(mod(i400x(i),2).eq.0) then
          i800a(i400y(i)) = ishft(i800c(i400x(i)),i400a(i400y(i)))
        endif
   10 continue
      write(6,*) i800a
      call sub(i800a,i800b)
      write(6,*) i800a
      stop
      end
      subroutine sub(i800a,i800b)
      integer*4  i800a(20),i800b(20),i800x(20),i8a
      data       i800x/20*0/
      data       i8a/11/
      do 11 i=1,20,2
        i800x(i) = iand(i800a(i),i800b(i))
        i800a(i) = ior(i800x(i),i8a)
   11 continue
      return
      end
