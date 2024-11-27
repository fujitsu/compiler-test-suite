 call s1
 print *,'pass'
 end
 subroutine s1
   integer ::a(25:38)=(/(n,n=25,38)/)
   integer ::b(25:38)=-1
   integer ::c(25:38)=-1
   integer ::x(5:5)/10/
   data kk/4/
   isf3(k)=k+x(kk+1)
   isf2(k)=k+isf3(k+k+k)+1
   isf1(i)=i+isf2(i+i+i)+1
   forall (j=isf1(1):isf1(2))
       b(j)=a(j)
       c(j)=a(j)
   end forall
   if (any(b/=a)) write(6,*) "NG"
   if (any(c/=a)) write(6,*) "NG"
      end
