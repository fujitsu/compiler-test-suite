interface
  subroutine sub(*,*,*,i,*,*)
    integer i
  end subroutine
end interface

call sub(*10, *20, *30, 10, *40, *50)
10 print *, 'ng'
stop
20 print *, 'ng'
stop
30 print *, 'ok'
stop
40 print *, 'ng'
stop
50 print *, 'ng'
end

subroutine sub(*,*,i,*,*,*)
  return 3
end
