       program main
       print *,'** pass **'
        contains
         subroutine subb()
         call sub1()
        end subroutine
       end 
       subroutine sub1()
       integer*1 i,jfun,kfun
       jfun()=i           
       ifun()=bit_size(i) 
       ifun1()=int(bit_size(i) )
       i= 1
       if (bit_size( i       ).ne.8) call err(1, 1)
       if (bit_size( jfun()  ).ne.8) call err(1, 2)
       if (bit_size( kfun()  ).ne.8) call err(1, 3)
       if (bit_size( i+i     ).ne.8) call err(1, 4)
       if (ifun().ne.8) call err(1, 5)
       if (ifun1().ne.8) call err(1, 6)
       end 
       function kfun()
       integer*1 kfun
       kfun =1
       end 
       subroutine err (i,j)
       print *,'sub',i,'   err   ',j
       end 
