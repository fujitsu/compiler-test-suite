      call test01()
      call test02()
      call test03()
      print *,'pass'
      end
      subroutine test01()
      integer ,parameter ::k(2)=1
      integer ,parameter ::i(0)=k(1:0)          
      integer ii(1:0)          
      call mvbits(i,i,i,ii,i) 
      end
      subroutine test02()
      integer ,parameter ::i(0)=(/(j,j=1,0)/)
      integer ii(1:0)          
      call mvbits(i,i,i,ii,i) 
      end
      subroutine test03()
      integer ,parameter ::i(0)=-100           
      integer ii(1:0)          
      call mvbits(i,i,i,ii,i) 
      end
