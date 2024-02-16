      real x(10,10)
      DO    290    i = 1,10
      DO    290    j = 1,10
      X(I,J) = i
  290 CONTINUE
      a=1
      b=1
      c=10
      d=10
      call sub1(a,b,c,d)
      call sub2(a,b,c,d)
      call sub3(a,b,c,d)
      call sub4(a,b,c,d)
      call sub5(a,b,c,d)
      call sub6(a,b,c,d)
      if(x(1,1).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG *****"
      endif
      print *,"***** OK *****"
      END

      subroutine sub1(a,b,c,d)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = a,c
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub2(a,b,c,d)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = a,10
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub3(a,b,c,d)
      real x(10,10)
      DO    300    i = 1,10
      DO    300    j = 1,d
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub4(a,b,c,d)
      real x(10,10)
      DO    300    i = a,c
      DO    300    j = b,d
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub5(a,b,c,d)
      real x(10,10)
      DO    300    i = 1,c
      DO    300    j = b,d
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END

      subroutine sub6(a,b,c,d)
      real x(10,10)
      DO    300    i = a,10
      DO    300    j = b,d
      X(I,J) = i
  300 CONTINUE
      if(x(1,1).ne.1) then
	print *,"***** NG1 *****"
      endif
      if(x(1,10).ne.1) then
	print *,"***** NG2 *****"
      endif
      if(x(10,1).ne.10) then
	print *,"***** NG3 *****"
      endif
      if(x(10,10).ne.10) then
	print *,"***** NG4 *****"
      endif
      if(x(7,8).ne.7) then
	print *,"***** NG5 *****"
      endif
      print *,"***** OK *****"
      return
      END
