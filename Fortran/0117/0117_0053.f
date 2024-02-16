      real px(25,25),vy(25,25),cx(25,25) 
      n=20
      px = 1
      vy = 2
      cx = 3
      DO 21 k= 1,25
      DO 21 i= 1,25
      DO 21 j= 1,n
      PX(i,j)= PX(i,j) +VY(i,k) * CX(k,j)
   21 CONTINUE
      if(px(1,1).ne.151) then
        print *,"***** NG *****"
      endif
      if(px(1,25).ne.1) then
        print *,"***** NG *****"
      endif
      if(px(25,1).ne.151) then
        print *,"***** NG *****"
      endif
      if(px(25,25).ne.1) then
        print *,"***** NG *****"
      endif
      if(px(25,20).ne.151) then
        print *,"***** NG *****"
      endif
      if(px(1,20).ne.151) then
        print *,"***** NG *****"
      endif
      if(px(20,20).ne.151) then
        print *,"***** NG *****"
      endif
      if(px(2,5).ne.151) then
        print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      end
