subroutine s(i,j)
    character(len=10) :: char01(i,j)

  char01='x'

  write(char01,*) "1",'2','3' 
if (char01(1,1)/=' 123')write(6,*) "NG"
if (char01(2,1)/='x')write(6,*) "NG"
if (char01(3,1)/='x')write(6,*) "NG"
end
call s(3,2)
print *,'pass'

end
