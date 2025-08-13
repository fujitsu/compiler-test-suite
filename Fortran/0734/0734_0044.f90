  TYPE VARYING_STRING
    CHARACTER,DIMENSION(:),POINTER :: chars
    CHARACTER,DIMENSION(:,:,:),POINTER :: charx
  ENDTYPE VARYING_STRING
logical v(1000)
call s
rewind 22
rewind 23
read (22,*) v(1:10);if (any(.not.v(:10)))print *,'error-1'
read (22,*) v(1:10);if (any(.not.v(:10)))print *,'error-2'
read (23,*) v(1:);if (any(.not.v))print *,'error-3'
read (23,*) v(1:);if (any(.not.v))print *,'error-4'
print *,'pass'
  CONTAINS
    subroutine    s()
      type(VARYING_STRING) :: string_a
      INTEGER                         :: la=10
      allocate(string_a%chars(10));string_a%chars='x'
      allocate(string_a%charx(10,10,10));string_a%charx='x'
      write(22,*) (string_a%chars == string_a%chars(1:la))
      write(22,*) (string_a%chars(1:la) == string_a%chars )
      write(22,*) (string_a%chars(1:la) == string_a%chars(1:la) )
      write(22,*) (string_a%chars(:) == string_a%chars(:) )
      write(22,*) (string_a%chars    == string_a%chars    )
      write(22,*) string_a%chars == 'x'
      write(23,*) (string_a%charx == string_a%charx(1:la,1:la,1:la))
      write(23,*) (string_a%charx(1:la,1:la,1:la) == string_a%charx )
      write(23,*) (string_a%charx(1:la,1:la,1:la) == string_a%charx(1:la,1:la,1:la) )
      write(23,*) (string_a%charx(:,:,:) == string_a%charx(:,:,:) )
      write(23,*) (string_a%charx    == string_a%charx    )
      write(23,*) string_a%charx == 'x'
    END subroutine
END
