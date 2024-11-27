 call s1
 print *,'pass'
 end
 subroutine s1
    INTEGER  ::A(3,3)=reshape((/(m,m=0,8)/),(/3,3/))
    n=3
    FORALL (I = 1:N-1)
      FORALL (J = I+1:N)
        A(I,J) = A(J,I)
      END FORALL
    END FORALL
  if (any((/a/)/=(/0,1,2,1,4,5,2,5,8/)))write(6,*) "NG"
      end
