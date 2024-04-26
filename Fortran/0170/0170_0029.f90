subroutine s1
      integer::i04a(1000)
      integer::count(2)
      
     ii=ifun01(i04a,count)
if (any(i04a/=2)) print *,101
     ii=ifun02(i04a,count)
if (any(i04a/=2)) print *,102
     ii=ifun03(i04a,count)
if (any(i04a/=2)) print *,103
    end 
      integer function ifun01(i04a,count) result(res)
      integer::i04a(1000)
      integer::count(2)

      n =0
      call init(i04a,n)
res=1
      end
      integer function ifun02(i04a,count) result(res)
      integer::i04a(1000)
      integer::count(2)

      n =0
      call xinit(i04a,n)
res=1
      end
      integer function ifun03(i04a,count) result(res)
      integer::i04a(1000)
      integer::count(2)

      n =0
      call yinit(i04a,n)
res=1
      end
      subroutine init(a,n)
      integer,intent(out)::a(1000)
      integer,intent(in)::n
      a = [[(1,i=1,n)], (2,i=n+1,1000) ]
      end
      subroutine xinit(a,n)
      integer,intent(out)::a(1000)
      integer,intent(in)::n
      a = [ (1,i=1,n) , (2,i=n+1,1000) ]
      end
      subroutine yinit(a,n)
      integer,intent(out)::a(1000)
      integer,intent(in)::n
      a = [ (1,i=1,n) , [(2,i=n+1,1000) ]]
      end
call s1
print *,'pass'
end
      
