  SUBROUTINE x(k,c1,c2,c3)
    CHARACTER(*),INTENT(out):: c1(k,k+1,k+2)
    CHARACTER(*),INTENT(out):: c2(k,k+1,k+2)
    CHARACTER(*),INTENT(out):: c3(k,k+1,k+2)
end subroutine
    CHARACTER(1):: c1(2,3,4)
    CHARACTER(1):: c2(2,3,4)
    CHARACTER(1):: c3(2,3,4)
call x(2,c1,c2,c3)
print *,'pass'
end
