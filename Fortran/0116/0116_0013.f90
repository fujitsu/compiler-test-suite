program main
  type str1
    integer :: i1,i2
    real(8),dimension(5) :: xMember
    real(8),dimension(5,5) :: xxMember
  end type str1

  real(8),parameter :: ANSWER=25.0
  real(8) :: result

  type(str1),dimension(5) :: structX

  call sub_test(structX)

  result = sum(structX(1)%xxMember)

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

  contains
  subroutine sub_test(structX)
    type(str1),dimension(5) :: structX

    do kk=1,5
      do jj=1,5
        do ii=1,5
          structX(:)%xxMember(ii,jj) = 1
        enddo
      enddo
    enddo

  end subroutine sub_test
end program main

