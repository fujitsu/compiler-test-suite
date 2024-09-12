      call s1
      print *,'pass'
      end
      subroutine s1
implicit none
integer,parameter::numcoins =10, &
                   numsims=1000
integer::matches, &
        n
logical ::coins(numcoins,numsims)
coins=.false.
call tosscoins
matches = 0
do n=1,numsims
 if (count(coins(:,n))==5) &
   matches=matches +1
end do

write(1,*)'5 heads & 5 tails occured ',100.0 * real(matches) /real(numcoins),'% of the time.'
contains

subroutine tosscoins
real ::numbers(numcoins,numsims)
call random_number(numbers)
where (numbers >=0.5)
 coins=.true.
end where
end subroutine tosscoins
end 
