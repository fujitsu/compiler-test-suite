#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern signed int v3 (signed short, signed char);
extern signed int (*v4) (signed short, signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern void v9 (signed int, unsigned int, signed int);
extern void (*v10) (signed int, unsigned int, signed int);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
void v13 (signed short, signed int);
void (*v14) (signed short, signed int) = v13;
extern signed short v15 (unsigned char, signed int, signed int, signed char);
extern signed short (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (signed short, signed int, unsigned char, unsigned short);
signed int (*v22) (signed short, signed int, unsigned char, unsigned short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed int v29 (signed short, signed short, signed short, signed short);
extern signed int (*v30) (signed short, signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed char v32 = -2;
signed int v31 = 0;

signed int v21 (signed short v34, signed int v35, unsigned char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 7U;
unsigned int v39 = 7U;
unsigned char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed short v41, signed int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -1;
signed int v44 = -3;
unsigned short v43 = 6;
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
signed char v49;
v48 = 1U + 5U;
v49 = v1 (v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
