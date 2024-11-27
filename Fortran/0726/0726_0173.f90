 call s1
 print *,'pass'
 end
 subroutine s1
   INTEGER A(5,4), B(5,4) 
   INTEGER aa(5,4), bb(5,4) 
   A=reshape((/0 ,1 , 2, 1, 0 ,0, 1, 2, 0 ,0 , 0,1,0,2, 0 , 0 ,0 , 2, 3, 0/),&
             (/5,4/))
   FORALL ( I = 1:5 ) 
      WHERE ( A(I,:) .EQ. 0 ) A(I,:) = I
      B (I,:) = I / A(I,:) 
   END FORALL 
   if (any((/A/)/=&
(/1,1,2,1,5,1,1,2,4,5,1,1,3,2,5,1,2,2,3,5/)))write(6,*) "NG"
   if (any((/B/)/=&
(/1,2,1,4,1,1,2,1,1,1,1,2,1,2,1,1,1,1,1,1/)))write(6,*) "NG"
   AA=reshape((/0 ,1 , 2, 1, 0 ,0, 1, 2, 0 ,0 , 0,1,0,2, 0 , 0 ,0 , 2, 3, 0/),&
             (/5,4/))

 call ss1(AA,BB)
  contains
    subroutine ss1(A,B)
integer,dimension(:,:)::A,B
   FORALL ( I = 1:size(A(:,1) )) 
      WHERE ( A(I,:) .EQ. 0 ) A(I,:) = I
      B (I,:) = I / A(I,:) 
   END FORALL 
   if (any((/A/)/=&
(/1,1,2,1,5,1,1,2,4,5,1,1,3,2,5,1,2,2,3,5/)))write(6,*) "NG"
   if (any((/B/)/=&
(/1,2,1,4,1,1,2,1,1,1,1,2,1,2,1,1,1,1,1,1/)))write(6,*) "NG"
end subroutine

end
