        complex  cx1(5),cx2(5,2),ct1(5)
         a=1.0
         do 10 i=1,5
          b=a+2.
          cx1(i)=cmplx(a,b)
  10      a=a+1.
         call suba(cx1,cx2,5)
         do 20 i=1,5
  20      ct1(i)=cx1(i)-cx2(i,1)
         do 30 i=1,5
          ct2=ct1(i)-cx2(i,2)
          if(ct2.ne.(0.,0.)) then
            print *,'*** ng * ( ',i,') ***',ct1(i)
          else
            print *,'*** ok * ( ',i,') ***'
          endif
  30     continue
       end
       subroutine suba(c1,c2,n)
        complex  c1(n),c2(n,2)
        real     a(5),b(5)
         do 100 i=1,n
          a(i)=imag(c1(i))
 100      b(i)=c1(i)
         do 200 i=1,n
          c2(i,1)=cmplx(b(i),a(i))
 200      c2(i,2)=c2(i,1)-c1(i)
         return
       end
