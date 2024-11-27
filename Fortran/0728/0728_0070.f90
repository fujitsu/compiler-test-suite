 call s1
 print *,'pass'
 end
 subroutine s1()
      do i=0,100
      call ss01(repeat('a',i),i)
      end do
      contains
       subroutine ss01(ccc,j)
       integer    j
       character*(j) ccc
       if (ccc.ne.repeat('a',j)) write(6,*) "NG"
       if (&
ccc.ne.repeat('a',j) .or. ccc.ne.repeat('a',j) .or. &
ccc.ne.repeat('a',j) .or. ccc.ne.repeat('a',j) .or. &
ccc.ne.repeat('a',j) .or. ccc.ne.repeat('a',j) .or. &
ccc.ne.repeat('a',j) .or. ccc.ne.repeat('a',j)      &
) write(6,*) "NG"
       if (&
ccc.eq.repeat('a',j) .and. ccc.eq.repeat('a',j) .and. &
ccc.eq.repeat('a',j) .and. ccc.eq.repeat('a',j) .and. &
ccc.eq.repeat('a',j) .and. ccc.eq.repeat('a',j) .and. &
ccc.eq.repeat('a',j) .and. ccc.eq.repeat('a',j)       &
) then
else
write(6,*) "NG"
endif
       end subroutine
      end
