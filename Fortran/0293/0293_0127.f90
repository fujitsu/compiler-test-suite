      subroutine sub1()
      type x
        integer i
      end type
      type (x) :: xfun1,xfun2,x1,x2(10)
      type y
        integer i(10)
      end type
      type (y) :: yfun1,yfun2,y1,y2(10)
      ifun(x1)=x1%i
      if (ifun(x1).ne.1) print *,'sub1  err  1'      
      end
      print *,'pass'
     end
