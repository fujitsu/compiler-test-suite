 call s1
 print *,'pass'
 end
 subroutine s1
 INTEGER :: A(5,5)=reshape((/(1,0,2,mm=1,9)/),(/5,5/))
FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   END WHERE
END FORALL
      END
