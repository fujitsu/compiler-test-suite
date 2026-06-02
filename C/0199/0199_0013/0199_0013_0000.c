#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed short v5 (unsigned char, signed int, unsigned char, unsigned int);
extern signed short (*v6) (unsigned char, signed int, unsigned char, unsigned int);
extern signed int v7 (signed short, unsigned int, signed char, signed int);
extern signed int (*v8) (signed short, unsigned int, signed char, signed int);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned short v13 (signed char, signed char);
extern unsigned short (*v14) (signed char, signed char);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v23 (signed short, unsigned char, signed short, signed short);
signed int (*v24) (signed short, unsigned char, signed short, signed short) = v23;
unsigned char v25 (unsigned char, unsigned char);
unsigned char (*v26) (unsigned char, unsigned char) = v25;
extern unsigned int v27 (signed int, signed short, unsigned short);
extern unsigned int (*v28) (signed int, signed short, unsigned short);
extern signed short v29 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v30) (signed short, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned short v32 = 6;
unsigned char v31 = 2;

unsigned char v25 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 1;
unsigned short v37 = 7;
signed char v36 = -1;
trace++;
switch (trace)
{
case 5: 
return v34;
default: abort ();
}
}
}
}

signed int v23 (signed short v39, unsigned char v40, signed short v41, signed short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 4;
unsigned char v44 = 5;
unsigned short v43 = 5;
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
unsigned short v48;
unsigned int v49;
v48 = v32 + 5;
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
