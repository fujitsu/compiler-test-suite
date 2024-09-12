      program main
      integer sary(10),ssum,a(10)
      data    sary/1,2,3,4,5,6,7,8,9,10/

      do 10 i=1,10
         a(i)=i
 10   continue

      ssum = 0
      do 15 i=1,10
         call isub(sary(i),ssum)
 15   continue

      write(6,*) ssum,a
      end

      subroutine isub(arg,s)
      integer  arg,s
      s=arg
      end
