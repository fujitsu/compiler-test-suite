call sub(10, 20)
10 write(*,*) '10'
stop
20 write(*,*) '20'
end

subroutine sub(i, *)
  integer i
  return 1
end
