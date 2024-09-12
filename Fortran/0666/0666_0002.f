          common xx(2),ans(10),xans(10)
          real a(10),b(5),c(5),d(10)
          equivalence( a(6),c(4) ),( b(3),d(10) ),( c(2),ans(4) )
          call sub1
          do 10 i = 1 , 10
          if( a(i) - xans(i) ) 2 , 1 , 2
    1     write(6,1001) i , a(i) , xans(i)
          go to 10
    2     write(6,1002) i , a(i) , xans(i)
   10     continue
 1000     stop
 1001     format(1h ,5x,'**   ok  **  item(',i2,1h),10x,2f10.3)
 1002     format(1h ,5x,'** error **  item(',i2,1h),10x,2f10.3)
          end
          subroutine sub1
          common xx(2),ans(10),xans(10)
          do 10 i = 1 , 10
          xans(i) = float(i)
   10     ans(i) = xans(i)
          return
          end
