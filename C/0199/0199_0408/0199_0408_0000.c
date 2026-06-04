#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (signed char, unsigned int, signed short, signed int);
extern signed char (*v4) (signed char, unsigned int, signed short, signed int);
extern signed char v5 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v6) (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
unsigned short v9 (unsigned int);
unsigned short (*v10) (unsigned int) = v9;
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned short);
extern unsigned char v21 (signed int, unsigned int, signed int);
extern unsigned char (*v22) (signed int, unsigned int, signed int);
extern signed short v23 (signed int, unsigned int, signed short, unsigned char);
extern signed short (*v24) (signed int, unsigned int, signed short, unsigned char);
extern unsigned short v25 (signed int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned char, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned short v32 = 7;
unsigned short v31 = 5;

unsigned short v9 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 5;
unsigned short v36 = 1;
unsigned int v35 = 6U;
trace++;
switch (trace)
{
case 11: 
return 2;
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
unsigned short v40;
v40 = v1 ();
history[history_index++] = (int)v40;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
