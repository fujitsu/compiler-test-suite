#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern unsigned int v3 (signed int, unsigned char, signed short);
extern unsigned int (*v4) (signed int, unsigned char, signed short);
extern void v5 (unsigned int, signed char, unsigned short);
extern void (*v6) (unsigned int, signed char, unsigned short);
unsigned int v7 (unsigned char, unsigned int, unsigned char, unsigned char);
unsigned int (*v8) (unsigned char, unsigned int, unsigned char, unsigned char) = v7;
extern signed int v9 (signed int, signed short, unsigned int, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed int v17 (signed int, unsigned short, signed char, signed short);
extern signed int (*v18) (signed int, unsigned short, signed char, signed short);
signed int v19 (unsigned short, unsigned short);
signed int (*v20) (unsigned short, unsigned short) = v19;
extern signed short v21 (signed char, signed short, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, signed short, unsigned char);
extern signed int v23 (signed short, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned short);
extern void v25 (signed char);
extern void (*v26) (signed char);
extern signed int v27 (signed char, unsigned int, unsigned int, signed int);
extern signed int (*v28) (signed char, unsigned int, unsigned int, signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = 1;
signed int v31 = 3;

signed int v19 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -2;
unsigned int v37 = 3U;
unsigned short v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v39, unsigned int v40, unsigned char v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 0;
signed char v44 = -3;
unsigned char v43 = 2;
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
v48 = 1U - 0U;
v49 = v1 (v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
