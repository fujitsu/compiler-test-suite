      call a1
      print *,'pass'
      end
      subroutine a1
      character*0 ch1
      character*0 ch2(2,0)
      ch1='a'
      ch2='a'
      call s1(ch1)
      call s2(ch2)
      contains
      subroutine s1(x)
      character*(*),optional::x
      if(transfer(x,x).ne.'') print *,'fail'
      if(transfer(x//x,x//x).ne.'') print *,'fail'
      if(transfer(x//trim(x),adjustr(x)//x).ne.'') print *,'fail'
      if(transfer(x//repeat(x,10),x//x).ne.'') print *,'fail'
      if(transfer(trim(x),trim(x)).ne.'') print *,'fail'
      if(transfer(adjustr(x),trim(x)).ne.'') print *,'fail'
      if(transfer(adjustl(x),trim(x)).ne.'') print *,'fail'
      if(transfer(adjustr(x),x).ne.'') print *,'fail'
      if(transfer(adjustl(x),x//x).ne.'') print *,'fail'
      if(transfer(repeat(x,0),repeat(x,1)).ne.'') print *,'fail'
      if(transfer(repeat(x,0),trim(x)).ne.'') print *,'fail'
      if(transfer(repeat(x,0),adjustr(x)).ne.'') print *,'fail'
      if(transfer(repeat(x,0),adjustl(x)).ne.'') print *,'fail'
      end subroutine
      subroutine s2(x)
      character*(*),dimension(:,:),optional::x
      call s3(transfer(x,x))
      call s3(transfer(x//x,x//x))
      call s3(transfer(x//adjustr(x),adjustr(x)//x))
      call s3(transfer(x//adjustl(x),x//x))
      call s3(transfer(adjustr(x),adjustr(x)))
      call s3(transfer(adjustr(x),adjustr(x)))
      call s3(transfer(adjustl(x),adjustr(x)))
      call s3(transfer(adjustr(x),x))
      call s3(transfer(adjustl(x),x//x))
      call s3(transfer(adjustl(x),adjustl(x))) 
      call s3(transfer(adjustl(x),adjustr(x)))
      call s3(transfer(adjustl(x),adjustr(x)))
      call s3(transfer(adjustl(x),adjustl(x))) 
      end subroutine
      subroutine s3(x)
      character*(*),dimension(:),optional::x
      logical*1 l(0)
      where(x .ne.'')
         l=.true.
      else where
         l=.false.
      end where
      if(all(l).neqv..true.) print *,'fail'
      end subroutine
      end
