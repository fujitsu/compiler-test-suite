      complex a1(3,5),a2(5,3)
      common  a2
      real b1
      print *,'<<< start >>>>>>>>>>'
      b1=1
      do 20 j=1,5
      do 10 i=1,3
      a1(i,j)=cmplx(i+j+1,i+j+2)
   10 continue
   20 continue
      call rtn01(a1,3,5)
      call rtn02(a1,3,5)
      if(a2(1,1).eq.(5,7)) then
        print *,'___ check-01 ok _______ good'
      else
        print *,' check-01 ng  a2(1,1) = ',a2(1,1)
      endif
      if(a2(2,1).eq.(7,8)) then
        print *,'___ check-02 ok _______ good'
      else
        print *,' check-02 ng  a2(2,1) = ',a2(2,1)
      endif
      if(a2(3,1).eq.(9,9)) then
        print *,'___ check-03 ok _______ good'
      else
        print *,' check-03 ng  a2(3,1) = ',a2(3,1)
      endif
      if(a2(4,1).eq.(9,8)) then
        print *,'___ check-04 ok _______ good'
      else
        print *,' check-04 ng  a2(4,1) = ',a2(4,1)
      endif
      if(a2(5,1).eq.(11,9)) then
        print *,'___ check-05 ok _______ good'
      else
        print *,' check-05 ng  a2(5,1) = ',a2(5,1)
      endif
      if(a2(1,2).eq.(8,11)) then
        print *,'___ check-06 ok _______ good'
      else
        print *,' check-06 ng  a2(1,2) = ',a2(1,2)
      endif
      if(a2(2,2).eq.(8,10)) then
        print *,'___ check-07 ok _______ good'
      else
        print *,' check-07 ng  a2(2,2) = ',a2(2,2)
      endif
      if(a2(3,2).eq.(10,11)) then
        print *,'___ check-08 ok _______ good'
      else
        print *,' check-08 ng  a2(3,2) = ',a2(3,2)
      endif
      if(a2(4,2).eq.(12,12)) then
        print *,'___ check-09 ok _______ good'
      else
        print *,' check-09 ng  a2(4,2) = ',a2(4,2)
      endif
      if(a2(5,2).eq.(12,11)) then
        print *,'___ check-10 ok _______ good'
      else
        print *,' check-10 ng  a2(5,2) = ',a2(5,2)
      endif
      if(a2(1,3).eq.(9,13)) then
        print *,'___ check-11 ok _______ good'
      else
        print *,' check-11 ng  a2(1,3) = ',a2(1,3)
      endif
      if(a2(2,3).eq.(11,14)) then
        print *,'___ check-12 ok _______ good'
      else
        print *,' check-12 ng  a2(2,3) = ',a2(2,3)
      endif
      if(a2(3,3).eq.(11,13)) then
        print *,'___ check-13 ok _______ good'
      else
        print *,' check-13 ng  a2(3,3) = ',a2(3,3)
      endif
      if(a2(4,3).eq.(13,14)) then
        print *,'___ check-14 ok _______ good'
      else
        print *,' check-14 ng  a2(4,3) = ',a2(4,3)
      endif
      if(a2(5,3).eq.(15,15)) then
        print *,'___ check-15 ok _______ good'
      else
        print *,' check-15 ng  a2(5,3) = ',a2(5,3)
      endif
      print *,'<<< end  >>>>>>>>>>>'
      end
      subroutine rtn01(h1,i1,i2)
      complex h1(i1,i2)
      do 20 j=1,5
        do 10 i=1,3
          h1(i,j)=h1(i,j)+(1,2)
   10 continue
   20 continue
      end
      subroutine rtn02(h1,i1,i2)
      complex h1(i1,i2),a2(5,3)
      common  a2
      j=1
      k=1
      l=1
      i=1
   10 if(i.gt.3) then
      j=j+1
      i=1
      endif
      if(j.gt.5) then
      goto 20
      endif
      if(l.gt.5) then
      k=k+1
      l=1
      endif
      a2(l,k)=h1(i,j)
      l=l+1
      i=i+1
      goto 10
   20 continue
      do 40 j=1,3
      do 30 i=1,5
      a2(i,j)=a2(i,j)+cmplx(i,j)
   30 continue
   40 continue
      end
