      program main
      parameter (l1=20,l2=20,l3=20)
      parameter (l13=l1*l3,l23=l2*l3,l12=l1*l2)
      real      x(l1,l3)/l13*50.0/,y(l2,l3)/l23*25.0/,z(l1,l2)/l12*75.0/

      call sub(x,y,z,l1,l2,l3)

      write(6,*) z

      stop
      end

      subroutine sub(a,b,c,l,m,n)
      dimension a(l,n),b(m,n),c(l,m)

      do 10 i=1,l
        do 10 j=1,m
          do 10 k=1,n
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
10    continue

      end
