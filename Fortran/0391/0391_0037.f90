   module foo
   contains
     subroutine aa() BIND(C,NAME='foo_aa')
       write(1,*) 1    
     end subroutine aa
   end module foo
use foo
call aa
rewind 1
read(1,*) k
if (k/=1) print *,101
print *,'pass'
end

