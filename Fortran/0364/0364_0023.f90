      integer(kind=4)::i04a(11),i04b(11)
      complex(kind=4)::c08a(11),c08b(11)
      integer(kind=4)::n,m
      logical(kind=4)::L04a(10)
      character(len=24)::form='("(",F7.3,",",F7.3,") ")'
      
      i04a = (/(i,i=12,22)/)
      i04b = (/(i,i= 1,11)/)
      c08a = (/(CMPLX(i,-i),i= 1,11)/)
      c08a = (/(CMPLX(-i,i),i=12,22)/)
      c08b = CMPLX(0.,0.)
      L04a = (/(mod(i,3)/=0,i=1,10)/)
      n= AINT(10.4)
      m=n*cos(0.0)

      i04a(2:11) = i04a(1:10) + 1
      i04b(2:11) = i04b(1:10) + 2
      
      c08a(2:11) = c08a(1:10) + CMPLX( 1.,- 1.)
      c08b(2:11) = c08b(1:10) + CMPLX( 2.,- 2.)
      
      i04a(2: 6) = i04a(1: 5) + 3
      i04b(2:11) = i04b(1:10) - 4

      c08a(2: 6) = c08a(1: 5) + CMPLX( 3.,- 3.)
      c08b(2:11) = c08b(1:10) - CMPLX( 4.,- 4.)

      i04a(2:11) = i04a(1:10) - 5
      i04b(2: 6) = i04b(1: 5) + 6

      c08a(2:11) = c08a(1:10) - CMPLX( 5.,- 5.)
      c08b(2: 6) = c08b(1: 5) + CMPLX( 6.,- 6.)

      i04a(2:n+1) = i04a(1:n) - 7
      i04b(2:n+1) = i04b(1:n) - 8

      c08a(2:n+1) = c08a(1:n) - CMPLX( 7.,- 7.)
      c08b(2:n+1) = c08b(1:n) - CMPLX( 8.,- 8.)

      i04a(2:n+1) = i04a(1:n) - 9
      n=INT(cos(0.0))*10
      i04b(2:n+1) = i04b(1:n) - 10

      c08a(2:n+1) = c08a(1:n) - CMPLX( 9.,- 9.)
      n=INT(sin(0.0))+10
      c08b(2:n+1) = c08b(1:n) - CMPLX(10.,-10.)

      i04a(2:n+1) = i04a(1:n) + 11
      i04b(2:m+1) = i04b(1:m) + 12

      c08a(2:n+1) = c08a(1:n) + CMPLX(11.,-11.)
      c08b(2:m+1) = c08b(1:m) + CMPLX(12.,-12.)

      i04a(2:11) = i04a(1:10) + 13
 10   continue
      i04b(2:11) = i04a(1:10) - 14
      if(n /= 10) goto 10

      c08a(2:11) = c08a(1:10) + CMPLX(13.,-13.)
 20   continue
      c08b(2:11) = c08a(1:10) - CMPLX(14.,-14.)
      if(n /= 10) goto 20

      where(L04a) i04a(2:n+1) = i04a(1:n) - 15
      where(L04a) i04b(2:m+1) = i04b(1:m) + 16

      where(L04a) c08a(2:n+1) = c08a(1:n) - CMPLX(15.,-15.)
      where(L04a) c08b(2:m+1) = c08b(1:m) + CMPLX(16.,-16.)

      where(L04a) 
        i04a(2:11) = i04a(1:10) -17
      elsewhere
        i04b(2:11) = i04b(1:10) -18
      endwhere
      
      where(L04a) 
        c08a(2:11) = c08a(1:10) - CMPLX(17.,-17.)
      elsewhere
        c08b(2:11) = c08b(1:10) - CMPLX(18.,-18.)
      endwhere
      
      write(6,100) i04a
      write(6,100) i04b
      write(6,FMT='(3(3'//form//',/),2'//form//',/)') c08a
      write(6,FMT='(3(3'//form//',/),2'//form//',/)') c08b
 100  format(2(5I5,/),I5,/)

      write(6,*) 'PASS'
      stop
      end
