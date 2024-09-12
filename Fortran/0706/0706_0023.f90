      call s1
      print *,'pass'
      end
  subroutine s1
integer,parameter::long=8,kanji=1
  integer(kind=4)i
real(kind=long) a
character(len=20,kind=1)english_word
character(len=20,kind=kanji)kanji_word
if (kind(i)/=4)call errtra
if (kind(a)/=8)call errtra
if (len(english_word)/=20)call errtra
if (kind(english_word)/=1)call errtra
if (kind(kanji_word)/=1)call errtra
call s2
call s3
   end
  subroutine s2
integer,parameter::kanji=1
character(kind=kanji)kanji_word
character(len=20)english_word
if (kind(kanji_word)/=1)call errtra
if (kind(english_word)/=1)call errtra
if (len(kanji_word)/=1)call errtra
if (len(english_word)/=20)call errtra
end
  subroutine s3
integer,parameter::kanji=1,long=8
integer(4) i
real(long) a
character(20,1) english_word
character(20,kanji) kanji_word
character(20) english_word2
if (kind(i)/=4)call errtra
if (kind(a)/=8)call errtra
if (kind(english_word)/=1.or.len(english_word)/=20)call errtra
if (kind(kanji_word)/=1.or.len(kanji_word)/=20)call errtra
if (kind(english_word2)/=1.or.len(english_word2)/=20)call errtra
end
