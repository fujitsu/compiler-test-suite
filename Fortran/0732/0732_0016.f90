   real,dimension(3,2)::a=reshape((/1,2,3,4,5,6/),(/3,2/))
   call sub(transpose(a))
print *,'pass'
   contains
   subroutine sub(a)
   real,dimension(:,:)::a
   if (any(shape(a)/=(/2,3/)))write(6,*) "NG"
   if (any(a/=reshape((/1,4,2,5,3,6/),(/2,3/))))write(6,*) "NG"
   end subroutine
end
