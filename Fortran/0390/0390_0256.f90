module m1
contains
      subroutine foo  ( ZDA1, ZDA2 )                                    
      REAL ZDA1(:,:), ZDA2(:,:)                                      
      REAL ZIFUD1(SIZE(ZDA1,1), SIZE(ZDA2,2))                        
      ZIFUD1=0
      END subroutine  
end
use m1
      parameter(NF4=3,NF5=3)
      REAL  ZDA1(NF5,NF4)
      REAL  ZDA2(NF4,NF5)
      REAL Z(SIZE(ZDA1,1), SIZE(ZDA2,2))                        
      ZDA1= (0.1,0.1)
      ZDA2= (0.2,0.3)

      call  foo  ( ZDA1(:, 3:1:-1),  ZDA2)
      Z= MATMUL( ZDA1(:, 3:1:-1),  ZDA2)
      if (any(Z==0)) print*,102
      print *,'pass'
      end
