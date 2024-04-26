	recursive subroutine test1
	real,pointer::p
	real,target ::t
	p=>t
	p=1
	end
	subroutine test2
	real,save,pointer::p
	real,target ::t
	p=>t
	p=1
	entry ent1
	end
	subroutine test4
	common /com/p,t
	real,pointer::p
	real,target ::t
	p=>t
	p=1
	end
	subroutine test6(p)
	real,pointer::p
	real,target,save ::t
	p=>t
	p=1
	end
	program xxx
	interface 
	  subroutine test6(p)
	  real,pointer::p
	  end subroutine 
	end interface
	real,pointer::p
        call test1
        call test2
	call ent1
        call test4
        call test6(p)
	print *,p
	end
