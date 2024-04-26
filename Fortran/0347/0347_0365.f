      implicit    complex*8(c)
      complex*8  cv1(100),cv2(100),cv3(100),cs
      cs = 0
      do 1 i=1,100
        cv1(i)=i
        cv2(i)=-i*i*(0.1,0.95)
  1     cv3(i)=cv2(i)*cv1(i)
      do 10 i=1,100
        cst1 = cs * cv1(i)
        cst2 = cst1 * cv2(i)
        cs   = cv3(i)*cst2
  10  continue
       write(6,*) cs
       stop
       end
