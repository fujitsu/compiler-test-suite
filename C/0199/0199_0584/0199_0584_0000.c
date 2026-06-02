#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed short, signed int);
extern signed short (*v2) (signed char, unsigned char, signed short, signed int);
extern void v3 (unsigned char, signed int, unsigned int);
extern void (*v4) (unsigned char, signed int, unsigned int);
extern void v5 (unsigned short, signed char);
extern void (*v6) (unsigned short, signed char);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern unsigned short v9 (signed char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned int);
unsigned int v11 (unsigned short, unsigned int, signed char, unsigned int);
unsigned int (*v12) (unsigned short, unsigned int, signed char, unsigned int) = v11;
extern void v13 (unsigned char, signed char, signed short);
extern void (*v14) (unsigned char, signed char, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (unsigned short, signed short);
extern unsigned char (*v20) (unsigned short, signed short);
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned short v23 (unsigned short, signed int, signed int, signed short);
extern unsigned short (*v24) (unsigned short, signed int, signed int, signed short);
void v25 (signed int, signed short, unsigned short, unsigned int);
void (*v26) (signed int, signed short, unsigned short, unsigned int) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed char v32 = -2;
signed int v31 = -2;

void v25 (signed int v34, signed short v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
signed short v39 = 3;
signed char v38 = -3;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v41, unsigned int v42, signed char v43, unsigned int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 7U;
signed char v46 = 1;
signed int v45 = -1;
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
signed char v50;
unsigned char v51;
signed short v52;
signed int v53;
signed short v54;
v50 = -3 + -4;
v51 = 4 - 4;
v52 = -2 + 0;
v53 = -3 - v33;
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
