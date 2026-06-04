integer ::n_part(10)=1
  write(34,'(1000000(tr1,i0))') n_part+1
  write(34,'(32767(tr1,i0))') n_part+1
  write(34,'(*    (tr1,i0))') n_part+1
1format    (1000000(tr1,i0))
2format    (32767(tr1,i0))
3format    (*    (tr1,i0))
write(34,1)n_part+1
write(34,2)n_part+1
write(34,3)n_part+1
rewind 34
read(34,*) n_part
if (any(n_part/=2) ) print *,1010
n_part=0
read(34,*) n_part
if (any(n_part/=2) ) print *,1010
n_part=0
read(34,*) n_part
if (any(n_part/=2) ) print *,1010
n_part=0


print *,'sngg183n : pass'
end
