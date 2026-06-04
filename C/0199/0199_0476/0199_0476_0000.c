#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed char);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
unsigned int v13 (unsigned char, unsigned short, signed char, unsigned int);
unsigned int (*v14) (unsigned char, unsigned short, signed char, unsigned int) = v13;
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
signed int v21 (signed char);
signed int (*v22) (signed char) = v21;
extern unsigned char v23 (signed int, signed char, signed char);
extern unsigned char (*v24) (signed int, signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, unsigned char, signed int);
extern unsigned int (*v28) (signed short, unsigned char, unsigned char, signed int);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed short v32 = 0;
unsigned char v31 = 5;

signed int v21 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 3U;
unsigned char v36 = 2;
unsigned int v35 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v38, unsigned short v39, signed char v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
signed int v43 = 0;
signed short v42 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed short v45;
signed char v46;
v45 = -4 + v42;
v46 = v19 (v45);
history[history_index++] = (int)v46;
}
break;
case 10: 
return v41;
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
unsigned int v49;
signed char v50;
signed int v51;
signed char v52;
unsigned char v53;
v49 = 5U + 1U;
v50 = -4 + 1;
v51 = -2 + -1;
v52 = -3 - 1;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
