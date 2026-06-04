IMPLICIT NONE
class(*) ,pointer :: tt
if (1.eq.2) then
select type(isrc =>tt)
type is(integer)
         block
           real :: cSum(1)
            cSum =1
            cSum = cSum
         end block
end select !type
endif
print *,'pass'
end
