#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v4) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned short v5 (signed short, signed char, unsigned short, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned short, unsigned char);
unsigned short v7 (unsigned char, unsigned int, signed int, unsigned int);
unsigned short (*v8) (unsigned char, unsigned int, signed int, unsigned int) = v7;
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed short v15 (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed short (*v16) (unsigned char, unsigned char, unsigned int, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned char v19 (unsigned char, signed short, unsigned char);
extern unsigned char (*v20) (unsigned char, signed short, unsigned char);
unsigned short v21 (unsigned short, signed char, unsigned short, signed char);
unsigned short (*v22) (unsigned short, signed char, unsigned short, signed char) = v21;
extern unsigned int v23 (unsigned short, unsigned char, signed short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned char, signed short, signed char);
unsigned int v25 (unsigned int, unsigned int);
unsigned int (*v26) (unsigned int, unsigned int) = v25;
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed char v29 (unsigned char, signed int, unsigned short, signed short);
extern signed char (*v30) (unsigned char, signed int, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned int v32 = 2U;
unsigned int v31 = 6U;

unsigned int v25 (unsigned int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 6U;
signed char v37 = -1;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v39, signed char v40, unsigned short v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 1;
signed int v44 = -4;
signed char v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v46, unsigned int v47, signed int v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 0;
signed char v51 = 2;
unsigned char v50 = 0;
trace++;
switch (trace)
{
case 4: 
return 7;
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
unsigned char v55;
v55 = v1 ();
history[history_index++] = (int)v55;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
