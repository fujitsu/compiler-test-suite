 call ss1
 call ss2
print *,'pass'
end
subroutine ss1
INTEGER :: A(5,5)
A=reshape((/1,2,1,1,1,0,1,2,1,0,0,1,2,0,0,0,1,0,2,0,0,0,2,3,0/),(/5,5/))
FORALL (J = 5:5)
FORALL (I = 1:5)
   WHERE (A(I,:) >= 0)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   ELSEWHERE (A(I,:) > 2)
      A(I,:) = 6
   END WHERE
   END WHERE
END FORALL
END FORALL
if(any((/A/)/=(/1,1,1,1,1,0,1,2,1,2,0,1,2,3,0,0,1,4,2,0,0,5,6,6,5/)))write(6,*) "NG"
       end
subroutine ss2
INTEGER :: A(5,5),B(5:5)=5
A=reshape((/1,2,1,1,1,0,1,2,1,0,0,1,2,0,0,0,1,0,2,0,0,0,2,3,0/),(/5,5/))
FORALL (J = 5:5)
FORALL (I = 1:B(J))
   WHERE (A(I,:) >= 0)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   ELSEWHERE (A(I,:) > 2)
      A(I,:) = 6
   END WHERE
   END WHERE
END FORALL
END FORALL
if(any((/A/)/=(/1,1,1,1,1,0,1,2,1,2,0,1,2,3,0,0,1,4,2,0,0,5,6,6,5/)))write(6,*) "NG"
       end
