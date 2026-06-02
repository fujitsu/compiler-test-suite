integer,parameter ::a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8,i=9,j=10,&
                    k=11,l=12,m=13,n=14,o=15,p=16,q=17,r=18,s=19,t=20,&
                    u=21,v=22,w=23,x=24,y=25,z=26
integer,dimension(j)::aa /1,2,3,4,5,6,7,8,9,10/
call test(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa)
if ( any(aa/=(/6,7,8,9,10,11,12,13,14,15/)) ) print *,"fail"
print *,'pass'
end

subroutine test(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa)
integer a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa(j)
!$omp parallel workshare
forall (kkk=1:10)
forall (iii=1:10) 
aa(a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r+s+t+u+v+w+x+y+z-351+iii) = &
aa(a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r+s+t+u+v+w+x+y+z-351+iii) + 5
end forall
end forall
!$omp end parallel workshare
end
