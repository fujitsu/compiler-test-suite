integer i(1)
call test01(i)
print *,"pass"
end


subroutine test01(i)
integer :: i(size((/integer :: /))+1) 
i=1
j=1
if (all((/character(j+1)::"arr"(1:j),"arr"(j:2)/).ne.(/"a ","ab"/))) print *,"err"
if (all((/character(j+1)::(/"arr"(1:j)/),["arr"(j:2)]/).ne.(/"a ","ab"/))) print *,"err"
end
