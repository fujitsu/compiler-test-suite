#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed char v3 (unsigned int, signed char, signed char);
extern signed char (*v4) (unsigned int, signed char, signed char);
extern unsigned int v7 (unsigned short, signed int, signed short, unsigned char);
extern unsigned int (*v8) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v9 (unsigned char, signed char, signed char);
extern unsigned int (*v10) (unsigned char, signed char, signed char);
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (signed char, unsigned int, signed char);
extern signed int (*v14) (signed char, unsigned int, signed char);
extern signed short v15 (unsigned int, unsigned int, unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned int, unsigned int, unsigned short);
extern void v17 (signed short, unsigned char);
extern void (*v18) (signed short, unsigned char);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned int v21 (signed int, unsigned char, unsigned short, signed int);
extern unsigned int (*v22) (signed int, unsigned char, unsigned short, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
signed short v25 (signed int, signed char, signed short, signed short);
signed short (*v26) (signed int, signed char, signed short, signed short) = v25;
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
signed int v29 (unsigned int, unsigned int);
signed int (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned char v32 = 5;
unsigned short v31 = 5;

signed int v29 (unsigned int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
signed int v37 = -1;
signed char v36 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed int v39, signed char v40, signed short v41, signed short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 5;
signed int v44 = 0;
signed short v43 = -1;
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
unsigned int v48;
unsigned char v49;
unsigned char v50;
unsigned short v51;
unsigned char v52;
v48 = 4U - 5U;
v49 = 0 + 6;
v50 = 3 - 3;
v51 = 5 - 3;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
