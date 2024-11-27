 call s1
 print *,'pass'
 end
 subroutine s1
  integer A(5,5)
  A=reshape((/1,2,1,2,1,     0,1,2,1,0,    0,1,2,0,0,  0,1,0,2,0,  0,0,2,3,0 /),(/5,5/))
  FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   ELSEWHERE (A(I,:) > 2)
      A(I,:) = 6
   END WHERE
 END FORALL
 if (any((/A/)/=(/1,1,1,1,1,  0,1,2,1,2,   0,1,2,3,0,   0,1,4,2,0,  0,5,6,6,5/)))write(6,*) "NG"
end
