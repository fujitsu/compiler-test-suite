#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned char, signed int);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
unsigned int v5 (signed int, signed int, unsigned char, signed char);
unsigned int (*v6) (signed int, signed int, unsigned char, signed char) = v5;
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
signed char v11 (unsigned char, signed char, signed int);
signed char (*v12) (unsigned char, signed char, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern unsigned int v21 (signed char, signed char);
extern unsigned int (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int, signed short);
extern unsigned short (*v26) (unsigned int, signed short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned short, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed char v32 = -4;
signed short v31 = -2;

signed char v11 (unsigned char v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
unsigned char v38 = 1;
signed int v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v40, signed int v41, unsigned char v42, signed char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 6U;
unsigned int v45 = 7U;
unsigned char v44 = 1;
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
unsigned short v49;
unsigned short v50;
unsigned char v51;
signed int v52;
unsigned short v53;
v49 = 5 + 3;
v50 = 1 - 2;
v51 = 5 + v33;
v52 = -4 - 3;
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
