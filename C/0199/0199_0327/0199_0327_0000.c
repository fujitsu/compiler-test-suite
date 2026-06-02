#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed int, unsigned char, unsigned char);
extern signed char (*v2) (unsigned int, signed int, unsigned char, unsigned char);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (signed short, signed char, unsigned int, unsigned char);
extern signed int (*v10) (signed short, signed char, unsigned int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (signed int, signed int, signed short);
extern unsigned char (*v20) (signed int, signed int, signed short);
extern unsigned char v21 (unsigned int, signed int);
extern unsigned char (*v22) (unsigned int, signed int);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
extern unsigned char v27 (unsigned char, unsigned char);
extern unsigned char (*v28) (unsigned char, unsigned char);
signed short v29 (signed char);
signed short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed int v32 = -1;
unsigned char v31 = 0;

signed short v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 2U;
signed short v36 = -4;
signed char v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v40 = 5;
signed int v39 = 2;
signed int v38 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v41;
signed char v42;
v41 = 0 - 1;
v42 = v17 (v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
unsigned char v43;
unsigned char v44;
unsigned char v45;
v43 = 2 - 0;
v44 = 0 + 2;
v45 = v27 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 5: 
{
unsigned short v46;
signed char v47;
v46 = v40 + v40;
v47 = v17 (v46);
history[history_index++] = (int)v47;
}
break;
case 13: 
return 6;
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
unsigned int v50;
signed int v51;
unsigned char v52;
unsigned char v53;
signed char v54;
v50 = 5U + 3U;
v51 = -2 - v32;
v52 = 5 + 1;
v53 = v31 - 6;
v54 = v1 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
