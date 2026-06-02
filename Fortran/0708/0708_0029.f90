 call s1
 print *,'pass'
 end
subroutine s1
   implicit integer(8)(a-z)
   integer(2),dimension(1,3,2,1)::a=0
     forall (n=1:1:1,i=1:3:1,j=1:2:1,m=1:1,i/=j)
      a(n,i,j,m)=1
     endforall
     if (any((/a/)/=(/0,1,1,1,0,1/)))print *,'fail';a=0;i1=1;i2=2;i3=3
     forall (n=i1:i1:i1,i=i1:i3:i1,j=i1:i2:i1,m=i1:i1,i/=j)
      a(n,i,j,m)=1
     endforall
     if (any((/a/)/=(/0,1,1,1,0,1/)))print *,'fail';a=0
     forall (n=1:1,i=1:3:1,j=1:2:1,m=i1:i2-i1)
      a(n,i,j,m)=1
     endforall
     if (any((/a/)/=1))print *,'fail';a=0
     forall (n=i1:i1:i1,i=i1:i3:i1,j=i1:i2:i1,m=i1:i1)
      a(n,i,j,m)=1
     endforall
     if (any((/a/)/=1))print *,'fail'
     k=0
     forall(i=1:10:1,i>0)
      k=k+1
     endforall
     forall (i=1:3:1,i>0.and.i<4)
      k=k+1
     endforall
     forall (i=i1:i3:i1,i>0.and.i<4)
      k=k+1
     endforall
end
