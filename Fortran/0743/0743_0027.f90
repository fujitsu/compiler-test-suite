write(20,'("abc",T10)',advance='no')
write(20,'("def")')
call chk
print *,'pass'
       end
subroutine chk
character*12 c
rewind 20
read(20,'(a)')c;if (c/='abc      def')write(6,*) "NG"
end
