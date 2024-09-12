module m1
 integer   assignment
end
use m1,only:assignment
 assignment=1
call s1
print *,'pass'
end

    subroutine  s1
    use m1,a=>assignment
    if (a/=1)print *,101
    end subroutine 
