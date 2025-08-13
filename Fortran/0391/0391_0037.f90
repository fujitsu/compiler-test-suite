   module foo
   contains
     subroutine aa() BIND(C,NAME='foo_aa')
       write(2,*) 1    
     end subroutine aa
   end module foo
use foo
call aa
rewind 2
read(2,*) k
if (k/=1) print *,101
print *,'pass'
end

