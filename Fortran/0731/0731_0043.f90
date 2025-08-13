  integer(8)::S
  S=23_8
  write(16,*)BTEST(-S,50)
  i=50
  write(16,*)BTEST(-S,i)
call sub
print *,'pass'
end
subroutine sub
logical g
rewind 16
read(16,*) g;if (.not.g)print *,'NG1'
read(16,*) g;if (.not.g)print *,'NG2'
end
