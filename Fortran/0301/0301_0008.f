      program main
      integer a(10),b(10),c(20)
      equivalence(a,b)
      data a/1,2,3,4,5,6,7,8,9,10/
      data c/20*0/
      do k=1,2
         do i=1,10
            a(i)=i
         enddo
         do j=11,20
            c(j)=b(j-10)+10
         enddo
      enddo
      print *,a
      print *,c
      end
