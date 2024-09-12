PROGRAM main
implicit none
INTEGER :: num = 5,i=2 ,x=0
ASSOCIATE(bb => num, num=> x)
  bb = 4
  num = 10
  ASSOCIATE ( num=>i)
  if ((num == 2) .AND. (bb==4) .AND. (x == 10)) print *,'PASS'
  END ASSOCIATE
END ASSOCIATE
END
