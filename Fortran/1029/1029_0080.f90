integer::a(4),b(4)
logical::l(4)

if (.true.) then
where((/.true.,.true.,.false.,.false./))
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

if ( (a(1).ne.2 .or. a(2).ne.2 .or. a(3).ne.2 .or. a(4).ne.2) &
     .and. &
     (b(1).ne.2 .or. b(2).ne.2 .or. b(3).ne.2 .or. b(4).ne.2) &
     .and. &
     (.not.l(1) .or. .not.l(2) .or. l(3) .or. l(4)) ) then
  write(6,*) "NG"
endif

print *,'pass'
end

subroutine sub(a,b,l)
integer::a(*),b(*)
logical::l(*)

if ((a(1).eq.1.or.a(2).eq.1) .or. (a(3).eq.1.and.a(4).eq.1)) then
do i=1,4
  if (l(i) .or. (a(i).eq.1.and.b(i).eq.1)) then
    a(i)=a(i)+1
    b(i)=b(i)+1
  elseif (l(i) .or. (a(i).eq.0.and.b(i).eq.0)) then
    a(i)=a(i)+2
    b(i)=b(i)+2
  else
    a(i)=0
    b(i)=0
    l(i)=.false.
  endif
enddo
endif
end
