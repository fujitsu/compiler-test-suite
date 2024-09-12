      program main
      dimension a(10),b(10),c(10),d(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      data d/1,2,3,4,5,6,7,8,9,10/
      do 10 i=2,10
 100    x = a(i) + sqrt(b(i))
 200    c(i) = c(i-1) + x
 300    y = c(i) + x
 400    d(i) = d(i-1) + y
  10  continue
      write(6,*) c
      write(6,*) d ,' i = ',i
      stop
      end
