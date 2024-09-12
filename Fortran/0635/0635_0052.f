       real f(10,10,10,10)/10000*1/
       real ff(10,10,10,10)/10000*2/
       real x2

       call sub1(x2,ks,ke,js,je,is,ie)

       do k=ks,ke
         do j=js,je
           do i=is,ie
             f(8,i,j,k)=ff(8,i,j,k)
             f(7,i,j,k)=ff(7,i,j,k)
             f(6,i,j,k)=ff(6,i,j,k)
             f(5,i,j,k)=ff(5,i,j,k)
             f(4,i,j,k)=ff(4,i,j,k)
             f(3,i,j,k)=ff(3,i,j,k)
             f(2,i,j,k)=ff(2,i,j,k)
             f(1,i,j,k)=ff(1,i,j,k)
           enddo

           if (j.lt.20) then
             do i=is,ie
               x2 = f(2,i,j,k)*f(2,i,j,k)+f(3,i,j,k)*f(3,i,j,k)
     1            +f(4,i,j,k)*f(4,i,j,k)
             enddo
           endif
         enddo
       enddo
       print*, x2
       end

       subroutine sub1(x2,ks,ke,js,je,is,ie)
       real x2
       integer ks,ke,js,je,is,ie

       x2 = 10
       ks = 1
       ke = 10
       js = 1
       je = 10
       is = 1
       ie = 10
       return
       end
