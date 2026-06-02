#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (signed char, signed short);
extern signed char (*v4) (signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed int, signed char, signed char);
extern signed short (*v12) (signed int, signed int, signed char, signed char);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
signed int v17 (signed int, signed char);
signed int (*v18) (signed int, signed char) = v17;
extern signed short v19 (signed char, signed short, unsigned int);
extern signed short (*v20) (signed char, signed short, unsigned int);
extern signed char v21 (unsigned char, unsigned short, signed int);
extern signed char (*v22) (unsigned char, unsigned short, signed int);
extern unsigned short v23 (unsigned short, signed short);
extern unsigned short (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, signed short, signed short, signed short);
extern unsigned int (*v26) (signed int, signed short, signed short, signed short);
unsigned char v27 (signed int, unsigned short, unsigned short, unsigned short);
unsigned char (*v28) (signed int, unsigned short, unsigned short, unsigned short) = v27;
extern signed char v29 (signed char, signed char, unsigned char, signed char);
extern signed char (*v30) (signed char, signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed short v32 = -1;
unsigned char v31 = 4;

unsigned char v27 (signed int v34, unsigned short v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 2;
signed int v39 = 3;
unsigned char v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 5;
signed short v44 = 0;
signed char v43 = -3;
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
signed short v48;
v48 = v1 ();
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
