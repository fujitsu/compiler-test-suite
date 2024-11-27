  integer(8)::S
  S=23_8
  write(1,*)BTEST(-S,50)
  i=50
  write(1,*)BTEST(-S,i)
call sub
print *,'pass'
end
subroutine sub
logical g
rewind 1
read(1,*) g;if (.not.g)print *,'NG1'
read(1,*) g;if (.not.g)print *,'NG2'
end


