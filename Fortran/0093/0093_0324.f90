interface  gnr
       subroutine s1(i)
       integer :: i
       end subroutine 

       subroutine s2(i)
       real :: i
       end subroutine 

       subroutine s3(i)
       complex :: i
       end subroutine 
end interface

  complex:: aa(2) = (2,3)
  aa(2) = (4,5)
  call gnr(aa(2)%re)
  if(aa(2)%re .ne. 7) print*,"121"
  print*,"Pass"
end
       subroutine s1(i)
       integer :: i
       i = i +2
       end subroutine 

       subroutine s2(i)
       real :: i
       i = i + 3
       end subroutine 

