  type z
    integer(4),allocatable::ii(:,:)
    character(2),allocatable::ch(:,:)
    real(4),allocatable::rr(:,:)
    complex(8),allocatable::cc(:,:)
    logical(2),allocatable::ll(:,:)
  end type

  type(z),allocatable::a(:)
  complex::cmplx(4)

  allocate(a(1))
  cmplx=(/(11.0,11.0),(21.0,21.0),(12.0,12.0),(22.0,22.0)/)

  call sub()

  if ( ( a(1)%ii(1,1).eq.11 .and. a(1)%ii(1,2).eq.12 .and. &
         a(1)%ii(2,1).eq.21 .and. a(1)%ii(2,2).eq.22 )              .and. &
         .not.any(a(1)%ii/=reshape((/11,21,12,22/),(/2,2/))) ) goto 100
  write(6,*) "NG"
100 continue

  if ( ( a(1)%ch(1,1).eq.'ab' .and. a(1)%ch(2,1).eq.'cd' .and. &
         a(1)%ch(1,2).eq.'ef' .and. a(1)%ch(2,2).eq.'gh' )         .and. &
        all(a(1)%ch==reshape((/'ab','cd','ef','gh'/),(/2,2/))) ) goto 200
  write(6,*) "NG"
200 continue

  if ( ( a(1)%rr(1,1).eq.11.0 .and. a(1)%rr(1,2).eq.12.0 .and. &
         a(1)%rr(2,1).eq.21.0 .and. a(1)%rr(2,2).eq.22.0 )           .and. &
        all(a(1)%rr==reshape((/11,21,12,22/),(/2,2/))) ) goto 300
  write(6,*) "NG"
300 continue

  if ( ( a(1)%cc(1,1).eq.cmplx(1) .and. a(1)%cc(2,1).eq.cmplx(2) .and. &
         a(1)%cc(1,2).eq.cmplx(3) .and. a(1)%cc(2,2).eq.cmplx(4) )    .and. &
        all(a(1)%cc==reshape(cmplx,(/2,2/))) ) goto 400
  write(6,*) "NG"
400 continue

  if ( ( a(1)%ll(1,1) .and. a(1)%ll(1,2) .and. &
         a(1)%ll(2,1) .and. a(1)%ll(2,2) )    .and. &
        all(a(1)%ll) ) goto 500
  write(6,*) "NG"
500 continue

 print *,'pass'

 contains

 subroutine sub()

  a(1) = z( (reshape((/11,21,12,22/),(/2,2/))), &
            (reshape((/'ab','cd','ef','gh'/),(/2,2/))), &
            (reshape((/11.0,21.0,12.0,22.0/),(/2,2/))), &
            (reshape((/(11.0,11.0),(21.0,21.0), &
                       (12.0,12.0),(22.0,22.0)/),(/2,2/))), &
            (reshape((/.true.,.true.,.true.,.true./),(/2,2/))) )
 end subroutine

end
