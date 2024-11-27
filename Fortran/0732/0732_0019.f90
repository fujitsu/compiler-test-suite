   real,dimension(2,2)::a=reshape((/1,2,3,4/),(/2,2/))
   call sub(transpose(a))
print *,'pass'
   contains
   subroutine sub(a)
   real,dimension(:,:)::a
   if (any(shape(a)/=(/2,2/)))write(6,*) "NG"
   if (any((/a/)/=(/1,3,2,4/)))write(6,*) "NG"
   end subroutine
end
