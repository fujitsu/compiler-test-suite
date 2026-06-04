#include <stdio.h>
#include <stdlib.h>
#define NDEBUG
#include <assert.h>

#define SIZE (8)
#define BOARD_WIDTH (SIZE+3)
#define BOARD_HEIGHT (SIZE+2)
#define EMPTY (' ')
#define BORDER ('#')

typedef char BOARD[BOARD_HEIGHT][BOARD_WIDTH];
typedef enum {FALSE = 0, TRUE = 1} BOOLEAN;

BOOLEAN queen(int y, BOARD* board_p);
BOOLEAN set_trace(int x, int y, BOARD* board_p);
void board_copy(BOARD* a, BOARD* b);
void init(BOARD* board_p) ;
void printboard(BOARD *board_p);
void queen_base(void);

int main()
{
  queen_base();
  return 0;
}

void
queen_base()
{
  BOARD* board_p;
  BOOLEAN ok;
  board_p = (BOARD*)malloc(sizeof(BOARD));
  init(board_p);
  ok = queen(1, board_p);
  free(board_p);
}

BOOLEAN
queen(int y, BOARD* board_p)
{
  BOARD* local_board_p = (BOARD*)malloc(sizeof(BOARD));
  BOOLEAN ok = FALSE;
  int x;

  board_copy(local_board_p, board_p);
  for (x = 1; x <= SIZE; x++) {
    if (set_trace(x, y, local_board_p)) {
      if (y < SIZE) {
	ok = queen(y+1, local_board_p);
      }
      else {
	printboard(local_board_p);
	return TRUE;
      }}
    else {
      board_copy(local_board_p, board_p);
    }} 
  free(local_board_p);
  return ok;
}

void
board_copy(BOARD* a, BOARD* b)
{
  int x, y;
  for (x = 0; x < BOARD_WIDTH; x++) {
    for (y = 0; y < BOARD_HEIGHT; y++) {
      (*a)[y][x] = (*b)[y][x];
    }}
}

void
init(BOARD* board_p)
{
  int x, y;

  for (x = 0; x < BOARD_WIDTH -1; x++) {
    for (y = 0; y < BOARD_HEIGHT; y++) {
      if (x == 0 || x == BOARD_HEIGHT -1 || y == 0 || y == BOARD_HEIGHT -1)
	(*board_p)[y][x] = BORDER;
      else
	(*board_p)[y][x] = EMPTY;
    }}
  for (y = 0; y <BOARD_HEIGHT ; y++)
    (*board_p)[y][BOARD_WIDTH -1] = '\0';
}

BOOLEAN
set_trace(int x, int y, BOARD* board_p)
{
  int x1, y1;
  BOOLEAN ok = ((*board_p)[y][x] == EMPTY);

  if (!ok)
    return FALSE;

  for (x1 = 1; x1 <= SIZE; x1++) { 
    assert((*board_p)[y][x1] != 'Q');
    assert((*board_p)[y][x1] != '-');
    assert((*board_p)[y][x1] != '+');
    if ((*board_p)[y][x1] == EMPTY)
      (*board_p)[y][x1] = '-';
    else if ((*board_p)[y][x1] == '|')
      (*board_p)[y][x1] = '+';
    else if ((*board_p)[y][x1] == '\\' || (*board_p)[y][x1] == '/')
      (*board_p)[y][x1] = '*';
  }

  for (y1 = 1; y1 <= SIZE; y1++) { 
    assert((*board_p)[y1][x] != 'Q');
    assert((*board_p)[y1][x] != '|');
    assert((*board_p)[y1][x] != '+');
    if ((*board_p)[y1][x] == EMPTY)
      (*board_p)[y1][x] = '|';
    else if ((*board_p)[y1][x] == '-')
      (*board_p)[y1][x] = '+';
    else if ((*board_p)[y1][x] == '\\' || (*board_p)[y1][x] == '/')
      (*board_p)[y1][x] = '*';
  }

  for ((x1 = (x - (SIZE - y) < 1) ? 1 : (x - (SIZE - y)),
	y1 = (y + x - 1 > SIZE) ? SIZE : (y + x - 1));
       x1 <= SIZE;
       x1++, y1--) {
    assert((*board_p)[y1][x1] != 'Q');
    assert((*board_p)[y1][x1] != '\\');
    assert((*board_p)[y1][x1] != 'X');
    if ((*board_p)[y1][x1] == BORDER)
      break;
    if ((*board_p)[y1][x1] == EMPTY)
      (*board_p)[y1][x1] = '\\';
    if ((*board_p)[y1][x1] == '/')
      (*board_p)[y1][x1] = 'X';
    if (   (*board_p)[y1][x1] == '|'
	|| (*board_p)[y1][x1] == '-'
	|| (*board_p)[y1][x1] == '+')
      (*board_p)[y1][x1] = '*';
  }

  for ((x1 = (x - (y - 1) < 1) ? 1 : (x - (y - 1)),
	y1 = (y - (x - 1) < 1) ? 1 : (y - (x - 1)));
       x1 <= SIZE;
       x1++, y1++) {
    assert((*board_p)[y1][x1] != 'Q');
    assert((*board_p)[y1][x1] != '/');
    assert((*board_p)[y1][x1] != 'X');
    if ((*board_p)[y1][x1] == BORDER)
      break;
    if ((*board_p)[y1][x1] == EMPTY)
      (*board_p)[y1][x1] = '/';
    if ((*board_p)[y1][x1] == '\\')
      (*board_p)[y1][x1] = 'X';
    if (   (*board_p)[y1][x1] == '|'
	|| (*board_p)[y1][x1] == '-'
	|| (*board_p)[y1][x1] == '+')
      (*board_p)[y1][x1] = '*';
  }
  (*board_p)[y][x] = 'Q';
  return ok;
}

void
printboard(BOARD* board_p)
{
  int x, y;
  for (y = BOARD_HEIGHT -1; y >= 0; y--) {
    printf("%s\t%d\n", &(*board_p)[y][0], y);
  }
}

