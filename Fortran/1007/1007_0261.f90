logical*2:: sum
logical*2,dimension(256):: l
integer     err

do i=1, 256
  if(mod(i,3) .eq. 0) then
    l(i) = .true.
  else
    l(i) = .false.
  end if
end do

!$omp parallel do private(sum)
  do i=1, 256
    call sub(sum, l(i))
    l(i) = l(i).or.sum
  end do
!$omp end parallel do

  err = 0
  do i=1, 256
    if(.not.l(i)) err = err+1
  end do

  if(err .ne. 0) then
    print *, 'NG'
  else
    print *, 'pass'
  endif

end

subroutine sub(i, j)
logical*2:: i, j

i = .not.j
i = i .and. .not.j
end

