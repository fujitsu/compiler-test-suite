1      call chx("abcdefg") 
2      call ent("abcdefg") 
3      end
4      subroutine chx(c)
5      character*(*) c
6      common /com1/ aa,bb,cc
7      character*3 aa,bb,cc
8      print *,c
9      return
       entry ent(c)
1      print *,aa,bb,cc
2      print *,c
3      end
4      block data
5      common /com1/ x,y,z
6      character*3 x,y,z
7      data x,y,z/'3','4','5'/
8      end
