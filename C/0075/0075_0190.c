#include<stdio.h>
typedef long ptrdiff_t;
struct _obstack_chunk
{
  char *limit;
  struct _obstack_chunk *prev;
  char contents[4];
};
struct obstack
{
  long chunk_size;
  char *object_base;
  char *chunk_limit;
};

int
_obstack_begin (struct obstack *h, int alignment)
{
  register struct _obstack_chunk *chunk;
  h->object_base =
    ((sizeof (ptrdiff_t) <
      sizeof (void *)? ((char *) chunk) : (char *) 0) + (((chunk->contents) -
							  (sizeof (ptrdiff_t)
							   <
							   sizeof (void
								   *)? ((char
									 *)
									chunk)
							   : (char *) 0) +
							  (alignment -
							   1)) & ~(alignment -
								   1)));
  h->chunk_limit = chunk->limit = (char *) chunk + h->chunk_size;
  return 1;
}

int main()
{
  printf ("ok\n");
}
