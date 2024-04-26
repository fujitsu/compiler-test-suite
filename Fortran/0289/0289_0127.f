      program main
      real a,b,c3,prt,add,c4
      complex   c1,c2
      integer   k,j,l,i
      character*13 chars
      dimension b(100),prt(1000)

      a=.6345*1+3.84e0-1
      do 5 l=a,a+2
        do 5 j=a,a*10
          b(j)=j
    5   continue

        c1=(+2.3e+1,1.e+1)
        c2=(+9.3e+2,1.e+0)
        c3=sqrt(sqrt(c1**2+10+l))
        add=0
        do 15 j=a,a*10
        do 15 k=int(c1),int(c2),10
          prt(k)=b(j)+k
   15     add=prt(k)+add

      write(6,*) 'c3=',c3
      add=add+c3
      c4=c3

      c3=amax1(c3,0.5,3.1,4.8,-1.0)

      chars='program is ok'
      i=len(chars)

      if (c3.ne.c4) then
        write(6,*) '** program is  ng(c3) **'
      else
        write(6,*) '** program is  ok(c3) **'
      endif
      if (i.ne.13) then
        write(6,*) '** program is  ng(i) **'
      else
        write(6,*) '** program is  ok(i) **'
      endif
      if (abs(add-1431252.9)>5.5e-2) then
        write(6,*) '** program is  ng(add) **'
        print *,add
      else
        write(6,*) '** program is  ok(add) **'
      endif
      stop
      end
