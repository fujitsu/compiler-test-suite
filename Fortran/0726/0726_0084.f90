 call s1
 print *,'pass'
 end
MODULE m1

   PRIVATE

   REAL, PUBLIC :: X = 15.0

END MODULE m1

MODULE m2

   USE m1

CONTAINS

   SUBROUTINE PrintX

      write(1,*) X

   END SUBROUTINE PrintX

END MODULE m2

subroutine s1

   USE m2

   CALL PrintX

  rewind 1
  read(1,*) a
  if (a/=15.0)write(6,*) "NG"

END
