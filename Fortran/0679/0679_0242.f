       real a(30,10,5,10),b(30,10,5,10),c(30,10,5,10)
       data n1,n2,n3,n4/30,10,5,10/
       data a,b,c/15000*5.0,15000*2.0,15000*3.0/
       call sub(a,b,c,n1,n2,n3,n4)
       stop
       end
       subroutine sub(a,b,c,n1,n2,n3,n4)
       real a(n1,n2,n3,n4),b(n1,n2,n3,n4),c(n1,n2,n3,n4)
       do 20 k=1,5
       do 10 j=1,6
       do 10 i=1,30
       do 10 l=1,7
       a(i,j,k,l)=c(i,j,k,l)-b(i,j,k,l)
  10   continue
  20   continue
       s=0.0
       do 1 k=1,5
       do 1 j=1,6
       do 1 i=1,30
       do 1 l=1,7
1         s=s+a(i,j,k,l)
       print *,s
       end