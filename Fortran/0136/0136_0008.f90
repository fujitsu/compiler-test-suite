call aaaa
print *,'pass'
contains
subroutine aaaa
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::dc
complex(16)::qc
i1=1
i2=1
i4=1
i8=1
r=1
d=1
q=1
c=1
dc=1
qc=1
call suba001([integer*1::1],1)
call suba001([integer*1::+1],1)
call suba001([[integer(1)::1]],1)
call suba001([integer(1)::+[+i1]],1)
call suba001([integer(1)::-[-i1]],1)
call suba001([i1+i1-i1],1)
call suba001([[i1]**[i1]],1)
call suba001([i1**i1-i1+i1],1)
call suba001([[i1]+[i1]-[i1]],1)
call suba001([[[[[[[[[[i1]]]]]]]]]],1)
call suba001([[i1],[i1]],2)
call suba001([[[[[i1]]]],i1],2)
call suba001([[[[[+i1]]]],i1],2)
call suba001([[[[[i1]]]],+i1],2)
call suba002([i2],1)
call suba002([+i2],1)
call suba002([[+i2]],1)
call suba002([+[+i2]],1)
call suba002([-[-i2]],1)
call suba002([i2+i2-i2],1)
call suba002([[i2]**[i2]],1)
call suba002([i2**i2-i2+i2],1)
call suba002([[i2]+[i2]-[i2]],1)
call suba002([[[[[[[[[[i2]]]]]]]]]],1)
call suba002([[i2],[i2]],2)
call suba002([[[[[i2]]]],i2],2)
call suba002([[[[[+i2]]]],i2],2)
call suba002([[[[[i2]]]],+i2],2)
call suba003([i4],1)
call suba003([+i4],1)
call suba003([[+i4]],1)
call suba003([+[+i4]],1)
call suba003([-[-i4]],1)
call suba003([i4+i4-i4],1)
call suba003([[i4]**[i4]],1)
call suba003([i4**i4-i4+i4],1)
call suba003([[i4]+[i4]-[i4]],1)
call suba003([[[[[[[[[[i4]]]]]]]]]],1)
call suba003([[i4],[i4]],2)
call suba003([[[[[i4]]]],i4],2)
call suba003([[[[[+i4]]]],i4],2)
call suba003([[[[[i4]]]],+i4],2)
call suba004([i8],1)
call suba004([+i8],1)
call suba004([[+i8]],1)
call suba004([+[+i8]],1)
call suba004([-[-i8]],1)
call suba004([i8+i8-i8],1)
call suba004([[i8]**[i8]],1)
call suba004([i8**i8-i8+i8],1)
call suba004([[i8]+[i8]-[i8]],1)
call suba004([[[[[[[[[[i8]]]]]]]]]],1)
call suba004([[i8],[i8]],2)
call suba004([[[[[i8]]]],i8],2)
call suba004([[[[[+i8]]]],i8],2)
call suba004([[[[[i8]]]],+i8],2)
call suba005([r],1)
call suba005([+r],1)
call suba005([[+r]],1)
call suba005([+[+r]],1)
call suba005([-[-r]],1)
call suba005([r+r-r],1)
call suba005([[r]**[r]],1)
call suba005([r**r-r+r],1)
call suba005([[r]+[r]-[r]],1)
call suba005([[[[[[[[[[r]]]]]]]]]],1)
call suba005([[r],[r]],2)
call suba005([[[[[r]]]],r],2)
call suba005([[[[[+r]]]],r],2)
call suba005([[[[[r]]]],+r],2)
call suba006([d],1)
call suba006([+d],1)
call suba006([[+d]],1)
call suba006([+[+d]],1)
call suba006([-[-d]],1)
call suba006([d+d-d],1)
call suba006([[d]**[d]],1)
call suba006([d**d-d+d],1)
call suba006([[d]+[d]-[d]],1)
call suba006([[[[[[[[[[d]]]]]]]]]],1)
call suba006([[d],[d]],2)
call suba006([[[[[d]]]],d],2)
call suba006([[[[[+d]]]],d],2)
call suba006([[[[[d]]]],+d],2)
call suba007([q],1)
call suba007([+q],1)
call suba007([[+q]],1)
call suba007([+[+q]],1)
call suba007([-[-q]],1)
call suba007([q+q-q],1)
call suba007([[q]**[q]],1)
call suba007([q**q-q+q],1)
call suba007([[q]+[q]-[q]],1)
call suba007([[[[[[[[[[q]]]]]]]]]],1)
call suba007([[q],[q]],2)
call suba007([[[[[q]]]],q],2)
call suba007([[[[[+q]]]],q],2)
call suba007([[[[[q]]]],+q],2)
call suba008([c],1)
call suba008([+c],1)
call suba008([[+c]],1)
call suba008([+[+c]],1)
call suba008([-[-c]],1)
call suba008([c+c-c],1)
call suba008([[c]**[c]],1)
call suba008([c**c-c+c],1)
call suba008([[c]+[c]-[c]],1)
call suba008([[[[[[[[[[c]]]]]]]]]],1)
call suba008([[c],[c]],2)
call suba008([[[[[c]]]],c],2)
call suba008([[[[[+c]]]],c],2)
call suba008([[[[[c]]]],+c],2)
call suba009([dc],1)
call suba009([+dc],1)
call suba009([[+dc]],1)
call suba009([+[+dc]],1)
call suba009([-[-dc]],1)
call suba009([dc+dc-dc],1)
call suba009([[dc]**[dc]],1)
call suba009([dc**dc-dc+dc],1)
call suba009([[dc]+[dc]-[dc]],1)
call suba009([[[[[[[[[[dc]]]]]]]]]],1)
call suba009([[dc],[dc]],2)
call suba009([[[[[dc]]]],dc],2)
call suba009([[[[[+dc]]]],dc],2)
call suba009([[[[[dc]]]],+dc],2)
call suba010([qc],1)
call suba010([+qc],1)
call suba010([[+qc]],1)
call suba010([+[+qc]],1)
call suba010([-[-qc]],1)
call suba010([qc+qc-qc],1)
call suba010([[qc]**[qc]],1)
call suba010([qc**qc-qc+qc],1)
call suba010([[qc]+[qc]-[qc]],1)
call suba010([[[[[[[[[[qc]]]]]]]]]],1)
call suba010([[qc],[qc]],2)
call suba010([[[[[qc]]]],qc],2)
call suba010([[[[[+qc]]]],qc],2)
call suba010([[[[[qc]]]],+qc],2)
end subroutine aaaa
subroutine suba001(x,y)
  integer(1):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err01'
  enddo
end subroutine suba001
subroutine suba002(x,y)
  integer(2)::x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err02'
  enddo
end subroutine suba002
subroutine suba003(x,y)
  integer(4):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err03'
  enddo
end subroutine suba003
subroutine suba004(x,y)
  integer(8):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err04'
  enddo
end subroutine suba004
subroutine suba005(x,y)
  real(4):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err05'
  enddo
end subroutine suba005
subroutine suba006(x,y)
  real(8):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err06'
  enddo
end subroutine suba006
subroutine suba007(x,y)
  real(16):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err07'
  enddo
end subroutine suba007
subroutine suba008(x,y)
  complex(4):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err08'
  enddo
end subroutine suba008
subroutine suba009(x,y)
  complex(8):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err09'
  enddo
end subroutine suba009
subroutine suba010(x,y)
  complex(16):: x(:)
  integer(4):: y
  do i=1,y
     if(x(i).ne.1) print *,'err10'
  enddo
end subroutine suba010
end program
