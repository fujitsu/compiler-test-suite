integer :: t(8) /1,2,3,4,4,3,2,1/
type aaa  
     integer naaa(8)
     integer kaaa(8)
end type aaa

type bbb  
     type (aaa) kbbb
end type bbb

type (bbb) ccc

!$omp parallel workshare
forall ( i=1:8 )
    ccc%kbbb%naaa(i) = t(i)
endforall
!$omp end parallel workshare

!$omp parallel workshare
forall (i=1:8:1)
    ccc%kbbb%naaa(i) = ccc%kbbb%naaa(i) + 1
    ccc%kbbb%kaaa(i) = ccc%kbbb%naaa(i) + 1
endforall
!$omp end parallel workshare

if ( any(ccc%kbbb%naaa /= (/2,3,4,5,5,4,3,2/)) ) print *,"fail"
if ( any(ccc%kbbb%kaaa /= (/3,4,5,6,6,5,4,3/)) ) print *,"fail"
print *,'pass'
end
