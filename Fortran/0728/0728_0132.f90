 call s1
 print *,'pass'
 end
 module m1
  interface chk
   module procedure t1
  end interface
   contains
    subroutine t1(c)
    character*(*) c
    write(40,*) '#'//c//'#',len(c)
    end subroutine
 end
subroutine s1
 use m1
  do j=0,5
  call ss1(j)
  end do
 callx
   contains
    subroutine ss1(k)
    call chk(trim('12   '(:k)))
    call sub('12   '(:k))
  end subroutine
end
 subroutine sub(c)
 character*(*) c
 write(40,*)'#'//c//'#',len(c)
end
subroutine x
character*15 r(12),rr
data r/&
' ## 0',&
' ## 0',&
' #1# 1',&
' #1# 1',&
' #12# 2',&
' #12# 2',&
' #12# 2',&
' #12 # 3',&
' #12# 2',&
' #12  # 4',&
' #12# 2',&
' #12   # 5'/
rewind 40
read(40,'(a)') rr;if (r(01)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(02)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(03)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(04)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(05)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(06)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(07)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(08)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(09)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(10)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(11)/=rr)write(6,*) "NG"
read(40,'(a)') rr;if (r(12)/=rr)write(6,*) "NG"
end
