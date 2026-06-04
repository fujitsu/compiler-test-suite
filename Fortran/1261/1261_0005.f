      parameter(n=10)
      integer a(n,n),b(n,n)
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      integer a(n,n)
   10 outer2:do k=1,9
!$omp parallel do collapse(2) 
   20   outer:do j=1,n
   30     inner:do i=1,n
            a(i,j)=a(i,j)+1
            mm=3
            go to (40,50,40) mm
   40       continue
   50     enddo inner
   60   enddo outer
   70 enddo outer2
      end

      subroutine sub0(a,n)                                                      
      integer a(n,n)                                                            
      do k=1,9
      do j=1,n                                                                  
        do i=1,n                                                                
          a(i,j)=a(i,j)+1                                                       
        enddo                                                                   
      enddo                                                                     
      enddo
      end                                                                       
                                                                                
      subroutine check(a,b,n)                                                   
      integer a(n,n),b(n,n)                                                     
      do j=1,n                                                                  
        do i=1,n                                                                
          if (a(i,j) .ne. b(i,j)) then                                          
            print*,"NG"                                                         
            call exit                                                           
          endif                                                                 
        enddo                                                                   
      enddo                                                                     
      print*,"OK"                                                               
      end
