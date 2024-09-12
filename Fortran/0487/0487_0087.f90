 character(1),allocatable::ch
         call s1(ch)
print *,'pass'
         contains
         subroutine s1(aaa)
         character(*),allocatable::aaa
         allocate(aaa,source="123",stat=i)
         if(i==0) print *,'err',i
         end subroutine s1
        end
