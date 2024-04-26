      program main
      real*8 d(10,10)
      real*4 e(10)
      s=0.
      call init(d,e)
      do 10 j=1,10
       s=s+e(j)
       do 10 i=1,10
        d(i,j)=s
   10   d(1,j)=d(1,j)+d(i,2)
      write(6,*)  d
      write(6,*)  e
      write(6,*)  s
      do 20 j=1,10
       do 20 i=1,10
   20   d(i,j)=j
      write(6,*)  j
      write(6,*)  i
      write(6,*)  d
      stop
      end
      subroutine init(d,e)
      real*8  d(10,10)
      real*4  e(10)
      do 10 i=1,10
       e(i)=i
       do 10 j=1,10
  10    d(i,j)=i+j
      return
      end
