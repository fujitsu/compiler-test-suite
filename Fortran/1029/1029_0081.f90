integer::a(4),b(4)
logical::l(4)

if (.true.) then
  where((/.true.,.false.,.false.,.true./))
    a(:)=1
    b(:)=1 
    l(:)=.true.
  else where
    a(:)=0
    b(:)=0 
    l(:)=.false.
  end where
endif

call sub(a,b,l)

if ( (a(1).ne.100 .or. a(2).ne.-100 .or. a(3).ne.0 .or. a(4).ne.1) &
     .and. &
     (b(1).ne.100 .or. b(2).ne.-100 .or. b(3).ne.0 .or. b(4).ne.1) &
     .and. &
     (.not.l(1) .or. l(2) .or. l(3) .or. .not.l(4)) ) then
  write(6,*) "NG"
elseif ( (a(1).ne.100 .or. a(2).ne.-100 .or. a(3).ne.0 .or. a(4).ne.1) &
     .or. &
     (b(1).ne.100 .or. b(2).ne.-100 .or. b(3).ne.0 .or. b(4).ne.1) &
     .or. &
     (.not.l(1) .or. l(2) .or. l(3) .or. .not.l(4)) ) then
  write(6,*) "NG"
endif

print *,'pass'
end

subroutine sub(a,b,l)
integer::a(*),b(*)
logical::l(*)

if ((a(1).eq.1.or.a(2).eq.0) .or. (a(3).eq.0.and.a(4).eq.1)) then
  do i=1,4
    if (l(i) .and. (a(i).eq.1.and.b(i).eq.1)) then
      forall (j=i:i)
        a(i)=100
        b(i)=100
      endforall
      cycle
    elseif (.not.l(i) .and. (a(i).eq.0.and.b(i).eq.0)) then
      forall (j=i:i)
        a(i)=-100
        b(i)=-100
      endforall
      exit
    else
      a(i)=0
      b(i)=0
      l(i)=.false.
    endif
  enddo
else
  write(6,*) "NG"
endif
if (.not.(i==2).and..true.) write(6,*) "NG"

end
