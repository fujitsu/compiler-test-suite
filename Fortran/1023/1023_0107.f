      recursive subroutine sub()
      real aaa
      real bbb
      aaa=1
      bbb=2
      call sub2()
      print *,aaa,bbb
      contains
        subroutine sub2() 
	aaa=1
	ccc=2
	print *,aaa,bbb,ccc
	call sub3()
        end subroutine
        subroutine sub3() 
	aaa=1
	ccc=2
	print *,aaa,bbb,ccc
        end subroutine
      end 

      aaa=3
      call sub()
      end
