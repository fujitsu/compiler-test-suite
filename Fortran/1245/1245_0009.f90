procedure(s),pointer::p
procedure(t),pointer::q
interface g
 procedure ::p,q
end interface
p=>s
q=>t
call g
call g(2)
rewind 1
read(1,*) n
if (n/=1) print *,1001
read(1,*) n
if (n/=2) print *,1002
print *,'sngg711p : pass'
contains
  subroutine s
    write(1,*) 1
  end
  subroutine t(k)
    write(1,*) k
  end
end
