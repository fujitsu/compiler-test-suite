program main
  type str1
    integer :: i1,i2
    real(8),dimension(5) :: xMember
    real(8),dimension(5,5) :: xxMember
  end type str1

  real(8),parameter :: ANSWER=25.0
  real(8) :: result

  type(str1),dimension(5,5) :: structXX

  call sub_test(structXX)


  result = sum(structXX%xxMember(1,1))

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

  contains
  subroutine sub_test(structXX)
    type(str1),dimension(5,5) :: structXX

    do kk=1,5
      do jj=1,5
        do ii=1,5
          structXX(kk,:)%xxMember(jj,ii) = 1
        enddo
      enddo
    enddo

  end subroutine sub_test
end program main

