write(1,'("abc",T10)',advance='no')
write(1,'("def")')
call chk
print *,'pass'
       end
subroutine chk
character*12 c
rewind 1
read(1,'(a)')c;if (c/='abc      def')write(6,*) "NG"
end
