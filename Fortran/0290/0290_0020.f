        subroutine test1
	integer*1 i11,i12
	parameter(i11=1,i12=2)
	integer*2 i21,i22
	parameter(i21=1,i22=2)
	print *,max(i11,i12)
	print *,max(i21,i22)
	print *,max(1,2)
	print *,max(1.0e0,2.0e0)
	print *,max(1.0d0,2.0d0)
	print *,max(i12,i11)
	print *,max(i22,i21)
	print *,max(2,1)
	print *,max(2.0e0,1.0e0)
	print *,max(2.0d0,1.0e0)
	print *,min(i11,i12)
	print *,min(i21,i22)
	print *,min(1,2)
	print *,min(1.0e0,2.0e0)
	print *,min(1.0d0,2.0d0)
	print *,min(i12,i11)
	print *,min(i22,i21)
	print *,min(2,1)
	print *,min(2.0e0,1.0e0)
	print *,min(2.0d0,1.0e0)
	end
        subroutine test2
	integer*1 i11,i12
	parameter(i11=-1,i12=2)
	integer*2 i21,i22
	parameter(i21=-1,i22=2)
	print *,max(i11,i12)
	print *,max(i21,i22)
	print *,max(-1,2)
	print *,max(-1.0e0,2.0e0)
	print *,max(-1.0d0,2.0d0)
	print *,max(i12,i11)
	print *,max(i22,i21)
	print *,max(2,-1)
	print *,max(2.0e0,-1.0e0)
	print *,max(2.0d0,-1.0e0)
	print *,min(i11,i12)
	print *,min(i21,i22)
	print *,min(-1,2)
	print *,min(-1.0e0,2.0e0)
	print *,min(-1.0d0,2.0d0)
	print *,min(i12,i11)
	print *,min(i22,i21)
	print *,min(2,-1)
	print *,min(2.0e0,-1.0e0)
	print *,min(2.0d0,-1.0e0)
        end
        program main
        call test1
        call test2
        end
