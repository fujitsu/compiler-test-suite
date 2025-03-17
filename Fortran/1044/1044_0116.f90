call aaaaa
call bbbbb
call ccccc
call ddddd
call eeeee
call fffff
call ggggg
call hhhhh
call iiiii
call jjjjj
call kkkkk
call mmmmm
call nnnnn
print *,'pass'
contains
subroutine aaaaa
integer(kind=1),allocatable::ia(:,:)
allocate(ia(2,5))
call suba( ia(:,1:5:2) )
end subroutine

subroutine bbbbb
integer(kind=2),allocatable::ia(:,:)
allocate(ia(2,5))
call subb( ia(:,1:5:2) )
end subroutine

subroutine ccccc
integer(kind=4),allocatable::ia(:,:)
allocate(ia(2,5))
call subc( ia(:,1:5:2) )
end subroutine

subroutine ddddd
integer(kind=8),allocatable::ia(:,:)
allocate(ia(2,5))
call subd( ia(:,1:5:2) )
end subroutine

subroutine eeeee
real(kind=4),allocatable::ia(:,:)
allocate(ia(2,5))
call sube( ia(:,1:5:2) )
end subroutine

subroutine fffff
real(kind=8),allocatable::ia(:,:)
allocate(ia(2,5))
call subf( ia(:,1:5:2) )
end subroutine

subroutine ggggg
real(kind=16),allocatable::ia(:,:)
allocate(ia(2,5))
call subg( ia(:,1:5:2) )
end subroutine

subroutine hhhhh
complex(kind=4),allocatable::ia(:,:)
allocate(ia(2,5))
call subh( ia(:,1:5:2) )
end subroutine

subroutine iiiii
complex(kind=8),allocatable::ia(:,:)
allocate(ia(2,5))
call subi( ia(:,1:5:2) )
end subroutine

subroutine jjjjj
complex(kind=16),allocatable::ia(:,:)
allocate(ia(2,5))
call subj( ia(:,1:5:2) )
end subroutine

subroutine kkkkk
logical(kind=1),allocatable::ia(:,:)
allocate(ia(2,5))
call subk( ia(:,1:5:2) )
end subroutine

subroutine lllll
logical(kind=2),allocatable::ia(:,:)
allocate(ia(2,5))
call subl( ia(:,1:5:2) )
end subroutine

subroutine mmmmm
logical(kind=4),allocatable::ia(:,:)
allocate(ia(2,5))
call subm( ia(:,1:5:2) )
end subroutine

subroutine nnnnn
logical(kind=8),allocatable::ia(:,:)
allocate(ia(2,5))
call subn( ia(:,1:5:2) )
end subroutine

subroutine suba(iarr)
integer(kind=1)::iarr(:,:)
integer*1 i
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub1(iarr(:,:))
end subroutine

subroutine subb(iarr)
integer(kind=2)::iarr(:,:)
integer*2 i
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub2(iarr(:,:))
end subroutine

subroutine subc(iarr)
integer(kind=4)::iarr(:,:)
integer*4 i
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub3(iarr(:,:))
end subroutine

subroutine subd(iarr)
integer(kind=8)::iarr(:,:)
integer*8 i
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub4(iarr(:,:))
end subroutine

subroutine sube(iarr)
real(kind=4)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub5(iarr(:,:))
end subroutine

subroutine subf(iarr)
real(kind=8)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub6(iarr(:,:))
end subroutine

subroutine subg(iarr)
real(kind=16)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub7(iarr(:,:))
end subroutine

subroutine subh(iarr)
complex(kind=4)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub8(iarr(:,:))
end subroutine

subroutine subi(iarr)
complex(kind=8)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub9(iarr(:,:))
end subroutine

subroutine subj(iarr)
complex(kind=16)::iarr(:,:)
iarr=reshape((/(i,i=1,6)/),(/2,3/))
call sub10(iarr(:,:))
end subroutine

subroutine subk(iarr)
logical(kind=1)::iarr(:,:)
iarr=reshape((/(.true.,i=1,6)/),(/2,3/))
call sub11(iarr(:,:))
end subroutine

subroutine subl(iarr)
logical(kind=2)::iarr(:,:)
iarr=reshape((/(.true.,i=1,6)/),(/2,3/))
call sub12(iarr(:,:))
end subroutine

subroutine subm(iarr)
logical(kind=4)::iarr(:,:)
iarr=reshape((/(.true.,i=1,6)/),(/2,3/))
call sub13(iarr(:,:))
end subroutine

subroutine subn(iarr)
logical(kind=8)::iarr(:,:)
iarr=reshape((/(.true.,i=1,6)/),(/2,3/))
call sub14(iarr(:,:))
end subroutine

end

subroutine sub1(iarr)
integer(kind=1) iarr(2,1:*)
if(iarr(2,2).ne.4) write(6,*) "NG"
end subroutine

subroutine sub2(iarr)
integer(kind=2) iarr(2,1:*)
if(iarr(2,2).ne.4) write(6,*) "NG"
end subroutine

subroutine sub3(iarr)
integer(kind=4) iarr(2,1:*)
if(iarr(2,2).ne.4) write(6,*) "NG"
end subroutine

subroutine sub4(iarr)
integer(kind=8) iarr(2,1:*)
if(iarr(2,2).ne.4) write(6,*) "NG"
end subroutine

subroutine sub5(iarr)
real(kind=4) iarr(2,1:*)
if(iarr(2,2).ne.4.0_4) write(6,*) "NG"
end subroutine

subroutine sub6(iarr)
real(kind=8) iarr(2,1:*)
if(iarr(2,2).ne.4.0_8) write(6,*) "NG"
end subroutine

subroutine sub7(iarr)
real(kind=16) iarr(2,1:*)
if(iarr(2,2).ne.4.0_16) write(6,*) "NG"
end subroutine

subroutine sub8(iarr)
complex(kind=4) iarr(2,1:*)
if(iarr(2,2).ne.(4.0_4,0.0_4)) write(6,*) "NG"
end subroutine

subroutine sub9(iarr)
complex(kind=8) iarr(2,1:*)
if(iarr(2,2).ne.(4.0_8,0.0_8)) write(6,*) "NG"
end subroutine

subroutine sub10(iarr)
complex(kind=16) iarr(2,1:*)
if(iarr(2,2).ne.(4.0_16,0.0_16)) write(6,*) "NG"
end subroutine

subroutine sub11(iarr)
logical(kind=1) iarr(2,1:*)
if(iarr(2,2).neqv..true._1) write(6,*) "NG"
end subroutine

subroutine sub12(iarr)
logical(kind=2) iarr(2,1:*)
if(iarr(2,2).neqv..true._2) write(6,*) "NG"
end subroutine

subroutine sub13(iarr)
logical(kind=4) iarr(2,1:*)
if(iarr(2,2).neqv..true._4) write(6,*) "NG"
end subroutine

subroutine sub14(iarr)
logical(kind=8) iarr(2,1:*)
if(iarr(2,2).neqv..true._8) write(6,*) "NG"
end subroutine


