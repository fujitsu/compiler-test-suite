#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed char, unsigned char, unsigned char);
extern signed int (*v12) (signed char, unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned int);
extern unsigned int (*v14) (unsigned char, signed short, unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern signed int v17 (signed short, unsigned char, signed char);
extern signed int (*v18) (signed short, unsigned char, signed char);
extern signed short v19 (signed short, unsigned char);
extern signed short (*v20) (signed short, unsigned char);
extern signed char v23 (unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char);
extern signed char v25 (signed int, unsigned int);
extern signed char (*v26) (signed int, unsigned int);
extern signed char v27 (signed short, signed char, unsigned char);
extern signed char (*v28) (signed short, signed char, unsigned char);
extern signed short v29 (unsigned int, unsigned short);
extern signed short (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned char v32 = 4;
signed char v31 = -3;

unsigned char v3 (void)
{
{
for (;;) {
signed int v36 = -3;
signed short v35 = 0;
signed char v34 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v37;
signed int v38;
v37 = v34 - v34;
v38 = v15 (v37);
history[history_index++] = (int)v38;
}
break;
case 3: 
{
signed char v39;
signed int v40;
v39 = -1 + v34;
v40 = v15 (v39);
history[history_index++] = (int)v40;
}
break;
case 5: 
return 4;
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
unsigned int v43;
unsigned short v44;
unsigned char v45;
v43 = 1U + 3U;
v44 = 0 - 1;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
