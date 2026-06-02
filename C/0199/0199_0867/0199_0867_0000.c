#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed char v5 (signed int, unsigned char, unsigned short, signed char);
extern signed char (*v6) (signed int, unsigned char, unsigned short, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v12) (unsigned short, unsigned short, signed char, unsigned char);
extern void v13 (signed char, unsigned char);
extern void (*v14) (signed char, unsigned char);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned char v17 (unsigned char, unsigned int, signed short, signed char);
extern unsigned char (*v18) (unsigned char, unsigned int, signed short, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (signed int, unsigned int, unsigned char, signed char);
extern signed short (*v22) (signed int, unsigned int, unsigned char, signed char);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern void v25 (signed short, signed int);
extern void (*v26) (signed short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed char v32 = -3;
unsigned int v31 = 4U;

static signed int v1 (void)
{
{
for (;;) {
unsigned short v36 = 7;
unsigned int v35 = 0U;
unsigned int v34 = 3U;
trace++;
switch (trace)
{
case 0: 
{
v9 ();
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v39;
v39 = v1 ();
history[history_index++] = (int)v39;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
