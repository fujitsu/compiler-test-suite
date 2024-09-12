      dimension a1(10),a2(10),a3(10),a4(10),a5(10),a6(10)
      dimension b1(10),b2(10),b3(10),b4(10),b5(10),b6(10)
      dimension l1(10),l2(10)
      logical*4 m(10)
      data a1,a2,a3,a4,a5,a6/60*0/
      data b1/1,2,3,1,2,3,1,2,3,1/
      data b2/1,2,3,1,2,3,1,2,3,1/
      data b3/1,4,9,16,25,36,49,64,81,100/
      data b4/100,81,64,49,36,25,16,9,4,1/
      data b5/1,2,3,1,2,3,1,2,3,1/
      data b6/1,2,3,1,2,3,1,2,3,1/
      data l1/1,2,3,1,2,3,1,2,3,1/,is1/3/
      data l2/1,2,3,1,2,3,1,2,3,1/,is2/3/
      data m/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./

      do 10 i=1,10
       if (m(i)) go to 10
        a1(i) = b1(i)**l1(i)
        a3(i) = sqrt(b3(i))
        a6(i) = b6(i)**is2
        a2(i) = b2(i)**l2(i)
        a4(i) = sqrt(b4(i))
        a5(i) = b5(i)**is1
  10  continue
      write(6,*) a1
      write(6,*) a2
      write(6,*) a3
      write(6,*) a4
      write(6,*) a5
      write(6,*) a6
      stop
      end
