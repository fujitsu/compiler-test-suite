  module moda
  contains
    integer function fib1(n)
    integer,intent(in)::n
    fib1 = int( ((1+sqrt(5.0))/2)**n / sqrt(5.0) + 0.5 )
    end function
    integer function fib2(pn)
    implicit none
    integer,intent(in)::pn
    integer a,a1,b,b1,c,c1,x,x1,y,y1,n
    a=1;b=1;c=0;x=1;y=0;
    n=pn-1;
    do while( n > 0 ) 
      if( iand(n,1) .eq. 1  ) then
        x1=x;y1=y;
        x=a*x1+b*y1;y=b*x1+c*y1;
      endif
      n = n/2;
      a1=a; b1=b; c1=c;
      a=a1*a1+b1*b1;
      b=b1*(a1+c1);
      c=b1*b1+c1*c1;
    end do
    fib2 = x
    end function
  end  module
  use moda
  print *,fib1(1),fib1(8)
  print *,fib2(1),fib2(8)
  end 
