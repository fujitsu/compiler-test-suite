#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, signed short, signed short, unsigned short);
extern void v3 (signed short, unsigned char, unsigned short);
extern void (*v4) (signed short, unsigned char, unsigned short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed int v7 (unsigned int, signed int, signed char, signed char);
extern signed int (*v8) (unsigned int, signed int, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char, unsigned char);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern void v13 (signed char, signed int);
extern void (*v14) (signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
void v17 (signed char, signed int, unsigned int, unsigned char);
void (*v18) (signed char, signed int, unsigned int, unsigned char) = v17;
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed int, signed int);
extern void (*v26) (unsigned short, unsigned int, signed int, signed int);
extern unsigned int v27 (unsigned short, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned short, signed short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed char v32 = -4;
unsigned int v31 = 7U;

void v17 (signed char v34, signed int v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
signed short v39 = -2;
signed short v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned short v43 = 3;
signed char v42 = 1;
signed int v41 = -4;
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
unsigned char v46;
signed short v47;
signed short v48;
unsigned short v49;
unsigned int v50;
v46 = 4 - 6;
v47 = -1 - -3;
v48 = -3 + 2;
v49 = v33 - v33;
v50 = v1 (v46, v47, v48, v49);
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
