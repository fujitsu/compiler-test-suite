#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, signed char, unsigned int, signed short);
extern unsigned int (*v2) (signed char, signed char, unsigned int, signed short);
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern signed int v13 (unsigned short, unsigned int, unsigned int);
extern signed int (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed char v19 (unsigned int, unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned int, unsigned short);
unsigned short v21 (signed short, signed char, signed char, signed int);
unsigned short (*v22) (signed short, signed char, signed char, signed int) = v21;
extern unsigned char v23 (signed short, signed int);
extern unsigned char (*v24) (signed short, signed int);
extern unsigned short v27 (unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (unsigned int, signed char, unsigned int);
unsigned short v29 (unsigned short, unsigned short, unsigned short);
unsigned short (*v30) (unsigned short, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed short v32 = -2;
unsigned short v31 = 2;

unsigned short v29 (unsigned short v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -3;
signed char v38 = -3;
signed char v37 = 1;
trace++;
switch (trace)
{
case 11: 
return 7;
default: abort ();
}
}
}
}

unsigned short v21 (signed short v40, signed char v41, signed char v42, signed int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 6;
unsigned char v45 = 5;
signed int v44 = 1;
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
signed char v49;
signed char v50;
unsigned int v51;
signed short v52;
unsigned int v53;
v49 = -1 + v33;
v50 = 0 + v33;
v51 = 1U + 1U;
v52 = v32 + -2;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
