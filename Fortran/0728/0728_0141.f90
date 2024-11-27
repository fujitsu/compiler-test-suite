      INTEGER  ::ILA1(8,9)
      INTEGER  ::ILA2(8,3,9),ILA2x(8,3,9),ILA2y(8,3,9)
      INTEGER  ::ICA4(8,5,9)=2
  ICA4(1:8:3, 1, 9:1:-2)=224
  ILA2(1:3, 2, 1:9:2)=0
  ILA2x(1, :, 2:6)=32
  ILA2y(1:5:2, 1, 5:1:-1)=0
      CALL MVBITS(ICA4(1:8:3, 1, 9:1:-2)-225, &
     &            ILA2(1:3, 2, 1:9:2),&
     &            ILA2x(1, :, 2:6),&
     &            ILA1(2:6:2, 1:9:2),&
     &            ILA2y(1:5:2, 1, 5:1:-1) )
 if (any(ILA1(2:6:2, 1:9:2)/=-1))print *,'error'
      print *,'pass'
      END
