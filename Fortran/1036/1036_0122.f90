      parameter (n=4)
      real(8),dimension(n,n)::a,b,c,d,master
      real(8),dimension(n*2,n*2)::a2,b2,c2,d2
      a=reshape((/(j,j=1,n*n)/),(/n,n/))
      b=a
      d=a
      a2(2:n+1,2:n+1)=a
      b2(2:n+1,2:n+1)=a
      d2(2:n+1,2:n+1)=a

      master = matmul(transpose(a),transpose(b)) + d

      call sub1(a2(2:n+1,2:n+1),b2(2:n+1,2:n+1),d2(2:n+1,2:n+1),c2(2:n+1,2:n+1))
      if (any(abs(master-c2(2:n+1,2:n+1))>0.001))print *,'error'
      print *,'pass'

      contains
      subroutine sub1(x,y,w,z)
      real(8),dimension(:,:)::y
      real(8),dimension(:,:)::z,x,w
      z=matmul(transpose(x),transpose(y))+w
      end subroutine
      end
