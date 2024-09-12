       real f(10,10,10,10)/10000*1/
       real ff(10,10,10,10)/10000*2/
       real x2, vmax/0/
       integer is,ie

       call sub1(is,ie)

       do k=1,10
         do j=1,10
           do i=1,10
             x2 = i + j + k
             f(8,i,j,k)=ff(8,i,j,k)
             f(7,i,j,k)=ff(7,i,j,k)
             f(6,i,j,k)=ff(6,i,j,k)
             f(5,i,j,k)=ff(5,i,j,k)
             f(4,i,j,k)=ff(4,i,j,k)
             f(3,i,j,k)=ff(3,i,j,k)
             f(2,i,j,k)=ff(2,i,j,k)
             f(1,i,j,k)=ff(1,i,j,k)
           enddo 

           do i=is,ie
             x2 = f(2,i,j,k)*f(2,i,j,k)+f(3,i,j,k)*f(3,i,j,k)
     1          +f(4,i,j,k)*f(4,i,j,k)
             vmax=amax1(vmax,x2)
           enddo
         enddo 
       enddo
       print*, vmax,x2
       end 

       subroutine sub1(is,ie)
       integer is, ie

       is = 1
       ie = 10
       return
       end
