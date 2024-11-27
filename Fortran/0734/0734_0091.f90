PROGRAM MAIN
  TYPE struct
    REAL, DIMENSION (:), POINTER :: a
  END TYPE struct
  TYPE (struct), POINTER :: s1,s2
  ALLOCATE (s1,s2)
  ALLOCATE (s1%a(1:1))
  s1%a=0.
  NULLIFY (s2%a)
  WRITE (1,*) "0",ASSOCIATED(s1%a),ASSOCIATED(s2%a)
  s2%a => s1%a
  WRITE (1,*) "1",ASSOCIATED(s1%a),ASSOCIATED(s2%a)
  NULLIFY (s1%a)
  WRITE (1,*) "2",ASSOCIATED(s1%a),ASSOCIATED(s2%a)
  rewind 1
call chk
print *,'pass'
END PROGRAM MAIN
subroutine chk
logical g1,g2
read(1,*) k,g1,g2
if(k/=0)write(6,*) "NG"
if(.not.g1)write(6,*) "NG"
if(g2)write(6,*) "NG"
read(1,*) k,g1,g2
if(k/=1)write(6,*) "NG"
if(.not.g1)write(6,*) "NG"
if(.not.g2)write(6,*) "NG"
read(1,*) k,g1,g2
if(k/=2)write(6,*) "NG"
end
