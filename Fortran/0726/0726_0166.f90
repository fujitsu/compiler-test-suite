 call s1
 print *,'pass'
 end
 subroutine s1
   integer ::a(25:38)=(/(n,n=25,38)/)
   integer ::b(25:38)=-1
   integer ::c(25:38)=-1
   integer ::d(25:38)=-1
   integer ::e(25:38)=-1
   integer ::f(25:38)=-1
   integer ::x(5:5)/10/
   data kk/4/
   isf3(n1,n2,n3)=n1+n2+n3+x(kk+1)
   isf2(k1,k2,k3)=k1+isf3(k3+k2+k1,k3*k2,k1+k2)+1
   isf1(i,j,k)=i+isf2(i+i+i,i+i+i+i,i*5)+1+isf2(i*6,i*7,8*i)+ &
             j+isf2(i+j+i,i+j+i+i,i*5)+1+isf2(i*6,j*7+i,8*i)+ &
             j+isf3(i+j+i,i+j+i+i,i*5)+k+isf2(i*6,j*7+i,8*i)   
   forall (j=isf1(1,2,3)+25-631:-1601+isf1(2,3,1)+38)
       b(j)=a(j)
       c(j)=a(j)
       d(j)=a(j)
       e(j)=a(j)
       f(j)=a(j)
   end forall
   if (any(b/=a)) write(6,*) "NG"
   if (any(c/=a)) write(6,*) "NG"
   if (any(d/=a)) write(6,*) "NG"
   if (any(e/=a)) write(6,*) "NG"
   if (any(f/=a)) write(6,*) "NG"
      end
