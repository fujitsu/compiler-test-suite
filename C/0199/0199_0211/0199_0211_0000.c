#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern unsigned int v11 (signed char, unsigned int, signed int, signed char);
extern unsigned int (*v12) (signed char, unsigned int, signed int, signed char);
extern unsigned int v13 (unsigned int, signed int, unsigned char);
extern unsigned int (*v14) (unsigned int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed char, unsigned char, unsigned int);
extern unsigned char (*v18) (signed char, unsigned char, unsigned int);
void v19 (void);
void (*v20) (void) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned char v23 (unsigned char, unsigned short, signed int, unsigned char);
unsigned char (*v24) (unsigned char, unsigned short, signed int, unsigned char) = v23;
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern signed short v29 (signed char, signed short, signed char, signed short);
extern signed short (*v30) (signed char, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned int v32 = 3U;
unsigned int v31 = 2U;

unsigned char v23 (unsigned char v34, unsigned short v35, signed int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
signed char v39 = -4;
signed short v38 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v41;
v41 = v5 ();
history[history_index++] = (int)v41;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
unsigned short v44 = 1;
signed char v43 = -1;
signed char v42 = 3;
trace++;
switch (trace)
{
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
v1 ();
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
