subroutine sub()
integer :: ii
ii = 4
associate(ii=>ii+2)
  block
  integer :: ii=0,jj=0
  jj = ii
  associate(ii=>ii+2)
    block
    jj = ii
    if(jj==2) then
      print*,'1:pass'
    else
       print*,"error"
    endif
    end block
  if(ii==jj) print*,"2:pass"
  end associate
  if(ii==0) print*,"3:pass"
  end block
if(ii==6) print*,"4:pass"
end associate
if(ii==4) print*,"5:pass"
end subroutine

call sub()
end

