module m1
contains
      FUNCTION ZIFUD1 ( ZDA1, ZDA2 )
      REAL ZDA1(:,:), ZDA2(:,:)
      REAL ZIFUD1(SIZE(ZDA1,1), SIZE(ZDA2,2))
      ZIFUD1=0
      END FUNCTION
end
use m1
      parameter(NF4=4,NF5=5)
      REAL  ZDA(NF5,NF5)
      REAL  ZDA1(NF5,NF4)
      REAL  ZDA2(NF4,NF5)
      ZDA1= 0.1
      ZDA2= 0.2

            ZDA =  ZIFUD1 ( ZDA1(1:5, 4:1:-1),  ZDA2)
      write(63,*)ZDA
            ZDA =  ZIFUD1 ( ZDA1, &
      &                ZDA2 )
      write(63,*)ZDA
      print *,'pass'
      end
