      program main
      real a,b,prt,prt2,prm1,dim
      complex   c1,c2,c3
      integer   k,j,l,n,num
      dimension b(100),prt(100),prt2(100),dim(3)
      data      dim/11.0,22.0,33.0/
*
      n=0
      a=.6345*1+3.84e0-1
      do 5 l=a,a+2
        do 10 j=a,a*10
          b(j)=j
   10   continue
        c1=(+9.3e+2,1.e+1)
        c2=(+9.3e+2,1.e+0)
        c3=sqrt(sqrt(c1**2+10+l))
        call sub1(c1,c2,c3,prm1)
        n=n+1
        num=0
        do 15 k=1,prm1
          prt(k)=prm1*k/k
          if (prt(k).ne.dim(n)) then
            write(6,*) '** is ng **'
            print *,"k=",k,":prt(k)=",prt(k)
            print *,"n=",n,":dim(n)=",dim(n)
            goto 900
          endif
   15   continue
        num=n+2
        prt2(l)=l
        if (prt2(l).ne.num) then
            write(6,*) '** is ng **'
            print *,"l=",l,":prt2(l)=",prt2(l)
            print *,"num=",num
            goto 900
        endif
    5   continue
      c3=sqrt(c2**2)
      if (c3.ne.9.3e+2) then
        write(6,*) '** is  ng **'
            print *,"c3=",c3
      else
        write(6,*) '** is  ok **'
      endif
  900 stop
      end
      subroutine sub1(sprm1,sprm2,sprm3,sprm4)
      real   sprm1,sprm2,sprm3,sprm4
      dimension sprm1(2),sprm2(2),sprm3(2)
      do 20 l=1,2
   20   sprm4=sprm1(l)+sprm2(l)+sprm3(l)
      end
