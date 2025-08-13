  integer(4), dimension(0) :: a05
  integer(4), dimension(0,0) :: a06
    write(18,'(A8,A8)')'TEST ID=','00000001'
    write(18,'(A20,(I5))')'  lbound whole array',lbound(a05)
    write(18,'(A20,(I5))')'  ubound whole array',ubound(a05)
    write(18,'(A20,(I5))')'  size whole array',size(a05)
    write(18,'(A20,(I5))')'  shape',shape(a05)
    write(18,'(A20,(L5))')'  is_contiguous',is_contiguous(a05)
    do i=1,rank(a05)
      write(18,'(A8,(I5))')'    dim=',i
      write(18,'(A20,(I5))')'    lbound dim',lbound(a05,dim=i)
      write(18,'(A20,(I5))')'    ubound dim',ubound(a05,dim=i)
      write(18,'(A20,(I5))')'    size dim',size(a05,dim=i)
    end do
  call suba('00000074',a05)
  call subb('00000075',a05)
  call suba('00000076',a06)
  call subc('00000077',a06)
call chk
print *,'pass'

  contains
  subroutine suba(cid, a)
    character(8) cid
    integer(4), dimension(..) ::a
    write(18,'(A8,A8)')'TEST ID=',cid
    write(18,'(A20,(I5))')'  lbound whole array',lbound(a)
    write(18,'(A20,(I5))')'  ubound whole array',ubound(a)
    write(18,'(A20,(I5))')'  size whole array',size(a)
    write(18,'(A20,(I5))')'  shape',shape(a)
    write(18,'(A20,(L5))')'  is_contiguous',is_contiguous(a)
    do i=1,rank(a)
      write(18,'(A8,(I5))')'    dim=',i
      write(18,'(A20,(I5))')'    lbound dim',lbound(a,dim=i)
      write(18,'(A20,(I5))')'    ubound dim',ubound(a,dim=i)
      write(18,'(A20,(I5))')'    size dim',size(a,dim=i)
    end do
  end subroutine
  subroutine subb(cid, a)
    character(8) cid
    integer(4), dimension(:) ::a
    write(18,'(A8,A8)')'TEST ID=',cid
    write(18,'(A20,(I5))')'  lbound whole array',lbound(a)
    write(18,'(A20,(I5))')'  ubound whole array',ubound(a)
    write(18,'(A20,(I5))')'  size whole array',size(a)
    write(18,'(A20,(I5))')'  shape',shape(a)
    write(18,'(A20,(L5))')'  is_contiguous',is_contiguous(a)
    do i=1,rank(a)
      write(18,'(A8,(I5))')'    dim=',i
      write(18,'(A20,(I5))')'    lbound dim',lbound(a,dim=i)
      write(18,'(A20,(I5))')'    ubound dim',ubound(a,dim=i)
      write(18,'(A20,(I5))')'    size dim',size(a,dim=i)
    end do
  end subroutine
  subroutine subc(cid, a)
    character(8) cid
    integer(4), dimension(:,:) ::a
    write(18,'(A8,A8)')'TEST ID=',cid
    write(18,'(A20,(I5))')'  lbound whole array',lbound(a)
    write(18,'(A20,(I5))')'  ubound whole array',ubound(a)
    write(18,'(A20,(I5))')'  size whole array',size(a)
    write(18,'(A20,(I5))')'  shape',shape(a)
    write(18,'(A20,(L5))')'  is_contiguous',is_contiguous(a)
    do i=1,rank(a)
      write(18,'(A8,(I5))')'    dim=',i
      write(18,'(A20,(I5))')'    lbound dim',lbound(a,dim=i)
      write(18,'(A20,(I5))')'    ubound dim',ubound(a,dim=i)
      write(18,'(A20,(I5))')'    size dim',size(a,dim=i)
    end do
  end subroutine
  end
subroutine chk
character(1000)::x
character(*),parameter::a(*)=[character(25)::&
'TEST ID=00000001',&
'  lbound whole array    1',&
'  ubound whole array    0',&
'    size whole array    0',&
'               shape    0',&
'       is_contiguous    T',&
'    dim=    1',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'TEST ID=00000074',&
'  lbound whole array    1',&
'  ubound whole array    0',&
'    size whole array    0',&
'               shape    0',&
'       is_contiguous    T',&
'    dim=    1',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'TEST ID=00000075',&
'  lbound whole array    1',&
'  ubound whole array    0',&
'    size whole array    0',&
'               shape    0',&
'       is_contiguous    T',&
'    dim=    1',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'TEST ID=00000076',&
'  lbound whole array    1',&
'    1',&
'  ubound whole array    0',&
'    0',&
'    size whole array    0',&
'               shape    0',&
'    0',&
'       is_contiguous    T',&
'    dim=    1',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'    dim=    2',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'TEST ID=00000077',&
'  lbound whole array    1',&
'    1',&
'  ubound whole array    0',&
'    0',&
'    size whole array    0',&
'               shape    0',&
'    0',&
'       is_contiguous    T',&
'    dim=    1',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0',&
'    dim=    2',&
'          lbound dim    1',&
'          ubound dim    0',&
'            size dim    0']
rewind 18
k=1
do
  read(18,'(a)',end=10)x
  if (a(k)/=x) then
    print *,a(k)
    print *,x
    print *,k
  endif
  k=k+1
end do
10 end
