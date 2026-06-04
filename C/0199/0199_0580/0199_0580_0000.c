#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, signed short, signed int);
extern unsigned char (*v2) (signed char, signed short, signed short, signed int);
signed int v3 (signed char, signed int, unsigned short, unsigned short);
signed int (*v4) (signed char, signed int, unsigned short, unsigned short) = v3;
extern signed char v5 (signed short, signed short, unsigned int);
extern signed char (*v6) (signed short, signed short, unsigned int);
extern signed char v7 (unsigned int, unsigned int, unsigned int);
extern signed char (*v8) (unsigned int, unsigned int, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed short v11 (signed short, unsigned int, unsigned int, signed int);
extern signed short (*v12) (signed short, unsigned int, unsigned int, signed int);
extern signed char v13 (unsigned short, signed int);
extern signed char (*v14) (unsigned short, signed int);
extern signed int v15 (signed int, unsigned short, unsigned short);
extern signed int (*v16) (signed int, unsigned short, unsigned short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
unsigned short v25 (signed char, signed char, unsigned short);
unsigned short (*v26) (signed char, signed char, unsigned short) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned short v32 = 6;
unsigned int v31 = 2U;

unsigned short v25 (signed char v34, signed char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
unsigned int v38 = 7U;
signed short v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v40, signed int v41, unsigned short v42, unsigned short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
signed char v45 = -4;
unsigned short v44 = 4;
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
signed short v50;
signed short v51;
signed int v52;
unsigned char v53;
v49 = -2 - -1;
v50 = 0 - -1;
v51 = 0 - 0;
v52 = v33 + v33;
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
