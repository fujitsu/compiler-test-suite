      program main
      dimension a1(0:20),a2(30),a3(20),b1(20),b2(20),c1(20),c2(20)
      data a2/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20,
     *        21,22,23,24,25,26,27,28,29,30/
      data a1/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/
      data a3/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/
      data b1/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/
      data b2/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/
      data c1/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/
      data c2/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *        11,12,13,14,15,16,17,18,19,20/

      do 10 i=5,10
        n=-i+5
        a1(i+10)=a1(-n)
        m=-i
        a2(i)=a2(-3*m)
        l=1
        a3(i+10)=a3(10*l)
  10  continue
      write(6,*)  'a1',a1
      write(6,*)  'a2',a2
      write(6,*)  'a3',a3

      do 20 j=1,3
      n=j+3
      m=3
      do 20 i=1,10
        z  =b1(n)
       b1(i+10)=b1(m)
       b2(i+10)=b2(n+m)
  20  continue
      write(6,*)  'b1',b1
      write(6,*)  'b2',b2

      do 30 j=1,3
      m=j+1
      n=5
      do 30 i=1,10
       c1(i+10)=c1(m)
        z  =c2(n)
       c2(i+10)=c2(n+m)
  30  continue
      write(6,*)  'c1',c1
      write(6,*)  'c2',c2
      stop
      end
