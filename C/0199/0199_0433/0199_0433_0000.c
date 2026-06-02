#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned char, signed short);
extern signed short (*v2) (unsigned int, unsigned char, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned char, unsigned short, signed int, signed int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (signed short, unsigned int, signed int);
extern unsigned char (*v10) (signed short, unsigned int, signed int);
unsigned short v11 (unsigned int, signed short, unsigned int, signed short);
unsigned short (*v12) (unsigned int, signed short, unsigned int, signed short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed short v17 (unsigned int, unsigned char);
signed short (*v18) (unsigned int, unsigned char) = v17;
extern unsigned short v19 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v20) (signed char, unsigned short, signed int, unsigned int);
extern signed short v21 (signed short, signed short, unsigned char);
extern signed short (*v22) (signed short, signed short, unsigned char);
extern signed int v23 (unsigned char, unsigned short, signed char);
extern signed int (*v24) (unsigned char, unsigned short, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned short, signed short);
extern signed short (*v28) (unsigned short, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed short v32 = -3;
signed short v31 = -2;

signed short v17 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
signed char v37 = -2;
unsigned short v36 = 5;
trace++;
switch (trace)
{
case 10: 
return -2;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v39, signed short v40, unsigned int v41, signed short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 2;
unsigned int v44 = 1U;
signed short v43 = 0;
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
signed short v50;
signed short v51;
v48 = 6U + 3U;
v49 = 6 - 4;
v50 = v32 + v32;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
