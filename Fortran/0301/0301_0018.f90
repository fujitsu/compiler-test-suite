type test
  integer,pointer:: x
end type

integer,target:: thread_num
integer err
type(test),pointer:: a(:,:,:)
thread_num = 0

allocate(a(8,9,10))
do n=1,10
  do m=1, 9
    do l=1, 8
      a(l,m,n)%x => thread_num
    end do
  end do
end do
err = 0
do n=1,10
  do m=1, 9
    do l=1, 8
      if (a(l,m,n)%x .ne. 0) then
        err = 1
      endif
    enddo
  enddo
enddo
if (err .ne. 1) then
  print *,"OK"
else
  print *,"NG"
endif
end
