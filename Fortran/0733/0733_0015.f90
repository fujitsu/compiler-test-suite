program main
  implicit none
  character :: string*30 = "1,10,123,15,654,12"
  integer   :: n, iarray(100)

  n = count(transfer(string, 'a', len(string)) == ",")
  read(string, *) iarray(1:n+1)

  if (n+1/=6)write(6,*) "NG"
  if (any(iarray(1:n+1)/=(/1,10,123,15,654,12/)))write(6,*) "NG"
  print *,'pass'
end program main
