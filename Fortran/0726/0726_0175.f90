 call s1
 print *,'pass'
 end
 subroutine s1
  integer A(5,5)
  A=reshape((/(1,i=1,25)/),(/5,5/))
  FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(I,:) = -1
   ELSEWHERE (A(I,:) == 1)
      A(I,:) = 2
   END WHERE
 END FORALL
if (any(A/=2))write(6,*) "NG"
end
