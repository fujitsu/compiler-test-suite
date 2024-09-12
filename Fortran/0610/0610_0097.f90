class(*),pointer :: ptr(:)
integer,target :: arr(5)

i = 2
arr(2) = 10
arr(3) =  20

ptr => arr

select type(aa=>ptr(i::2))
  type is(integer)
  i = i+1
  IF(aa(1) .EQ. 10) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
end select
end
