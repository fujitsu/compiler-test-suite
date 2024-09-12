      program main
      integer a(10),b
      character*1 c(10)/10*'a'/ ,d/'x'/
      data a/10*231/,b/191/
      integer  n/10/

      do 10 i=1,n
        a(i)=ichar(d)
   10 continue
                                     write(6,*) a
      do 20 i=1,n
        a(i)=ichar(c(i))
   20 continue
                                     write(6,*) a
      do 30 i=1,n
        c(i)=char(b)
   30 continue
                                     write(6,*) c
      do 40 i=1,n
        c(i)=char(a(i))
   40 continue
                                     write(6,*) c
      end
