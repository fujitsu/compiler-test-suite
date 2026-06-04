#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned char, signed int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned char, signed int, unsigned int, unsigned char);
extern void v5 (signed short, signed int, signed char);
extern void (*v6) (signed short, signed int, signed char);
extern signed int v7 (signed int, unsigned char, signed int, signed char);
extern signed int (*v8) (signed int, unsigned char, signed int, signed char);
signed short v9 (unsigned short, signed short, unsigned short, unsigned short);
signed short (*v10) (unsigned short, signed short, unsigned short, unsigned short) = v9;
void v11 (unsigned short, signed char);
void (*v12) (unsigned short, signed char) = v11;
extern signed short v13 (signed int, signed int, signed short);
extern signed short (*v14) (signed int, signed int, signed short);
extern void v15 (signed short, signed short);
extern void (*v16) (signed short, signed short);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned int, signed char, signed int, signed short);
extern signed int (*v22) (unsigned int, signed char, signed int, signed short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern signed short v29 (signed int, unsigned short, unsigned short);
extern signed short (*v30) (signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned char v32 = 2;
unsigned int v31 = 7U;

void v11 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
unsigned char v37 = 4;
unsigned short v36 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v39, signed short v40, unsigned short v41, unsigned short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 3U;
signed int v44 = 2;
signed short v43 = 1;
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
