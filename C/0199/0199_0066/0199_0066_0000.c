#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed char (*v6) (unsigned int, unsigned char, unsigned int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern signed char v15 (unsigned short, signed int, unsigned char);
extern signed char (*v16) (unsigned short, signed int, unsigned char);
unsigned char v17 (unsigned int, signed short, signed char, unsigned int);
unsigned char (*v18) (unsigned int, signed short, signed char, unsigned int) = v17;
signed int v19 (unsigned int, unsigned int, signed int);
signed int (*v20) (unsigned int, unsigned int, signed int) = v19;
extern unsigned int v23 (signed short, signed int, signed short);
extern unsigned int (*v24) (signed short, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned short, unsigned int, signed char);
unsigned short v27 (unsigned char, unsigned short, unsigned int, signed short);
unsigned short (*v28) (unsigned char, unsigned short, unsigned int, signed short) = v27;
extern void v29 (signed short, unsigned short);
extern void (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = 1;
unsigned int v31 = 2U;

unsigned short v27 (unsigned char v34, unsigned short v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -4;
unsigned char v39 = 6;
unsigned char v38 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v41, unsigned int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 0;
signed short v45 = -3;
signed char v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v47, signed short v48, signed char v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = -2;
signed int v52 = -2;
signed char v51 = 1;
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
signed short v56;
v56 = v1 ();
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
