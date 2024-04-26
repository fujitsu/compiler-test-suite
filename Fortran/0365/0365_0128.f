      call sub(2,100,2)
      end
      
      subroutine sub(k1,n1,m1)
      common /com/k2,n2,m2
      integer ::x=1,y=10,z=2
      integer a(100,10,10)
      pointer (p,k3),(q,n3),(r,m3)
      p = loc(x)
      q = loc(y)
      r = loc(z)

      do i1=k1,n1,m1               
        do i2=k2,n2,m2
          do i3=k3,n3,m3
            a(i1,i2,i3)=i1+100*i2+1000*i3
          end do
        end do
      end do
        
      do i1=k1,n1,m1               
        do i2=k2,n2,m2
          do i3=k3,n3,m3
            if (a(i1,i2,i3).ne.(i1+100*i2+1000*i3))  stop 'ng'
          end do
        end do
      end do
   
      print *,'ok'
      end

      block data bk
      common /com/k2,n2,m2
      data k2,n2,m2 /1,10,2/
      end
