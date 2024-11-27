  INTEGER , DIMENSION(5) :: A,B=0,C=0
  write(1,*)(/1,2,3,4,5/)
  rewind 1
  READ (1,*) A
  WHERE (A > 0)
    B = A
    WHERE (A > 3)
      C = A
    END WHERE
  ELSE WHERE (A == 0)
    B = -1
  ELSE WHERE
    C = -1
  END WHERE
  if (any((/a,b,c/)/=(/1,2,3,4,5,1,2,3,4,5,0,0,0,4,5/)))write(6,*) "NG"
  print *,'pass'
  end
