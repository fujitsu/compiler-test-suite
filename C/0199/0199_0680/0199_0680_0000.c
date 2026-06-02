#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed int, unsigned char, signed int, signed short);
extern unsigned char (*v10) (signed int, unsigned char, signed int, signed short);
void v11 (unsigned int, unsigned short, unsigned short);
void (*v12) (unsigned int, unsigned short, unsigned short) = v11;
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
signed char v15 (unsigned char, unsigned short, signed short, unsigned char);
signed char (*v16) (unsigned char, unsigned short, signed short, unsigned char) = v15;
extern void v17 (signed int, unsigned int, unsigned int, signed int);
extern void (*v18) (signed int, unsigned int, unsigned int, signed int);
extern void v19 (unsigned char, signed char, unsigned char, signed int);
extern void (*v20) (unsigned char, signed char, unsigned char, signed int);
extern signed short v21 (unsigned short, signed char, signed short);
extern signed short (*v22) (unsigned short, signed char, signed short);
extern signed char v23 (unsigned char, signed char);
extern signed char (*v24) (unsigned char, signed char);
extern unsigned int v25 (signed short, signed short, signed char);
extern unsigned int (*v26) (signed short, signed short, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned short v32 = 2;
signed char v31 = 2;

signed char v15 (unsigned char v34, unsigned short v35, signed short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned char v39 = 7;
signed short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v41, unsigned short v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 2U;
unsigned int v45 = 2U;
signed char v44 = -4;
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
unsigned int v49;
unsigned char v50;
v49 = 4U + 6U;
v50 = v1 (v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
