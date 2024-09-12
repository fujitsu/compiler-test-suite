       program main
       call sub1()
       call sub2()
       call sub3()
       call sub4()
       print *,'** pass'
       end 
       subroutine sub4()
       integer a(10) /10*1/     
       integer i     /   1/     
       jfun()=i                 
       if (bit_size( i+1     ).ne.32) call err(4, 1)
       if (bit_size(  +1     ).ne.32) call err(4, 2)
       if (bit_size(   1     ).ne.32) call err(4, 3)
       if (bit_size(  -1     ).ne.32) call err(4, 4)
       if (bit_size( 1+1     ).ne.32) call err(4, 5)
       if (bit_size( -a(1)   ).ne.32) call err(4, 6)
       if (bit_size( a(1)    ).ne.32) call err(4, 7)
       if (bit_size( +a(1)   ).ne.32) call err(4, 8)
       if (bit_size( a(1)+1  ).ne.32) call err(4,10)
       if (bit_size( kfun()  ).ne.32) call err(4,11)
       if (bit_size(-kfun()  ).ne.32) call err(4,12)
       if (bit_size(+kfun()  ).ne.32) call err(4,13)
       if (bit_size( kfun()+1).ne.32) call err(4,14)
       if (bit_size( jfun()  ).ne.32) call err(4,15)
       if (bit_size(-jfun()  ).ne.32) call err(4,16)
       if (bit_size(+jfun()  ).ne.32) call err(4,17)
       if (bit_size( jfun()+1).ne.32) call err(4,18)
       if (bit_size( int(1.0)).ne.32) call err(4,19)
       end 
       subroutine sub1()
       integer*1 i,jfun
       integer kfun
       jfun()=i           
       ifun()=bit_size(i) 
       ifun1()=int(bit_size(i) )
       i= 1
       if (bit_size( i       ).ne.8) call err(1, 1)
       if (bit_size( jfun()  ).ne.8) call err(1, 2)
       if (bit_size( int(kfun(),1)  ).ne.8) call err(1, 3)
       if (bit_size( i+i     ).ne.8) call err(1, 4)
       if (ifun().ne.8) call err(1, 5)
       if (ifun1().ne.8) call err(1, 6)
       end 
       subroutine sub2()
       integer*2 i,jfun
       integer  kfun
       jfun()=i           
       ifun()=bit_size(i) 
       i= 1
       if (bit_size( i       ).ne.16) call err(2, 1)
       if (bit_size( jfun()  ).ne.16) call err(2, 2)
       if (bit_size( int(kfun(),2)  ).ne.16) call err(2, 3)
       if (bit_size( i+i     ).ne.16) call err(2, 4)
       if (ifun().ne.16)              call err(2, 5)
       end 
       subroutine sub3()
       integer*4 i,jfun,kfun
       jfun()=i           
       ifun()=bit_size(i) 
       i= 1
       if (bit_size( i       ).ne.32) call err(3, 1)
       if (bit_size( jfun()  ).ne.32) call err(3, 2)
       if (bit_size( kfun()  ).ne.32) call err(3, 3)
       if (bit_size( i+i     ).ne.32) call err(3, 4)
       if (ifun().ne.32)              call err(3, 5)
       end 
       function kfun()
       integer kfun
       kfun =1
       end 
       subroutine err (i,j)
       print *,'sub',i,'   err   ',j
       end 
