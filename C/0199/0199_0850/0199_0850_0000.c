#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char, unsigned char);
extern void (*v2) (unsigned char, unsigned char);
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
signed short v5 (signed char, signed int);
signed short (*v6) (signed char, signed int) = v5;
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern signed char v9 (signed int, unsigned int);
extern signed char (*v10) (signed int, unsigned int);
extern signed short v11 (unsigned short, unsigned int);
extern signed short (*v12) (unsigned short, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned char, unsigned int);
extern unsigned short (*v18) (signed char, signed short, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed short v21 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v23 (signed short, unsigned int, unsigned short);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern unsigned int v27 (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned short v32 = 4;
unsigned int v31 = 1U;

signed char v25 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 6;
signed int v36 = -1;
unsigned char v35 = 1;
trace++;
switch (trace)
{
case 7: 
return 2;
default: abort ();
}
}
}
}

signed short v5 (signed char v38, signed int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -1;
unsigned short v41 = 0;
unsigned int v40 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 5;
signed int v45 = -1;
unsigned char v44 = 1;
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
unsigned char v49;
unsigned char v50;
v49 = 6 - 4;
v50 = 2 - 7;
v1 (v49, v50);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
