subroutine s1
character(*),parameter,dimension(27)::a01=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '1' , '12345678' ] , &
     [ ( '1' , '1' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a02=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '1' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a03=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '1' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a04=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '12345678' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a05=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '12345678' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a06=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '12345678' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a07=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '12345678' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a08=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '12345678' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a09=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '12345678' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a10=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '12345678' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a11=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '12345678' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a12=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '12345678' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a13=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '12345678' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a14=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '12345678' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a15=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '12345678' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a16=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '12345678' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]
character(4),parameter,dimension(27)::a17=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '12345678' ]  &  
 ]
character(4),parameter,dimension(27)::a18=[ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ]

call s01(a01               )
call s01(a02               )
call s01(a03               )
call s01(a04               )
call s01(a05               )
call s01(a06               )
call s01(a07               )
call s01(a08               )
call s01(a09               )
call s01(a10               )
call s01(a11               )
call s01(a12               )
call s01(a13               )
call s01(a14               )
call s01(a15               )
call s01(a16               )
call s01(a17               )
call s01(a18               )
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '1' , '12345678' ] , &
     [ ( '1' , '1' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ character(8)::( '12345678' , '1' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ character(8)::( '1' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ character(8)::'12345678' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ character(8)::'1' , ( '12345678' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ character(8)::'1' , ( '1' , '12345678' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ character(8)::( '12345678' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ character(8)::( '1' , '12345678' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ character(8)::( '1' , '1' , k3=1,1) , '12345678' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ character(8)::'12345678' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ character(8)::'1' , ( '12345678' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ character(8)::'1' , ( '1' , '12345678' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ character(8)::'1' , ( '1' , '1' , k4=1,1) , '12345678' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [ character(8)::      [ character(4):: '12' , '12345678' ] , '12345678' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ character(8)::'12345678' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'12345678' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ character(4)::'1234' , [ character(4):: '12' , '12345678' ] , '12345678' ]  &  
 ])
call s01([ &
  character(4) :: '1234' , '12' ,&
      ( '12345678' , n=1,1 ) , &
     [ '12345678' , '12345678' ] , &
     [ ( '12345678' , '12345678' , k1=1,1) ] , &
     [ '1' , ( '1' , '1' , k2=1,1) ] ,&
     [ ( '1' , '1' , k3=1,1) , '1' ] , &
     [ '1' , ( '1' , '1' , k4=1,1) , '1' ] , &
     [       [ character(4):: '12' , '12345678' ] , '1234' ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ]       ] , &  
     [ '1234' , [ character(4):: '12' , '12345678' ] , '1234' ]  &  
 ])
contains
subroutine s01(x)
character(*)::x(:)
if (len(x)/=4)print *,len(x)
if (size(x)/=27) print *,101
end subroutine
end
call s1
print *,'pass'
end